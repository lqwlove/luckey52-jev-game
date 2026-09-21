#!/usr/bin/env bash
# 宝塔服务器部署：git 拉取、构建、PM2 托管 Express（含前端 dist）。
# 首次：
#   bash scripts/bt-deploy.sh --seed
# 之后更新：
#   bash /www/app/luckey52-jev-game/scripts/bt-deploy.sh
set -euo pipefail

APP_DIR="${APP_DIR:-/www/app/luckey52-jev-game}"
APP_NAME="${APP_NAME:-jev-game}"
DEPLOY_REPO="${DEPLOY_REPO:-git@github.com:lqwlove/luckey52-jev-game.git}"
DEPLOY_BRANCH="${DEPLOY_BRANCH:-main}"
SEED=0
for arg in "$@"; do
  if [[ "$arg" == "--seed" ]]; then
    SEED=1
  fi
done

log() { printf '\n==> %s\n' "$*"; }
die() { printf '错误：%s\n' "$*" >&2; exit 1; }

for node_bin in /www/server/nodejs/*/bin; do
  if [[ -x "$node_bin/node" ]]; then
    export PATH="$node_bin:$PATH"
    break
  fi
done

command -v git >/dev/null || die "未找到 git，请在宝塔软件商店安装 Git"
command -v node >/dev/null || die "未找到 node，请在宝塔软件商店安装 Node.js"
command -v npm >/dev/null || die "未找到 npm"

if [[ ! -d /www/server ]]; then
  log "未检测到 /www/server，仍按当前环境继续部署"
fi

clone_or_pull() {
  if [[ -d "$APP_DIR/.git" ]]; then
    log "更新代码 $APP_DIR ($DEPLOY_BRANCH)"
    git -C "$APP_DIR" fetch origin
    git -C "$APP_DIR" checkout "$DEPLOY_BRANCH"
    git -C "$APP_DIR" pull --ff-only origin "$DEPLOY_BRANCH"
    return
  fi
  [[ -n "${DEPLOY_REPO:-}" ]] || die "首次部署请设置 DEPLOY_REPO"
  mkdir -p "$(dirname "$APP_DIR")"
  if [[ -d "$APP_DIR" ]] && [[ -n "$(ls -A "$APP_DIR" 2>/dev/null)" ]]; then
    die "$APP_DIR 已存在且不是 git 仓库。请换目录或清空后重试"
  fi
  log "克隆 $DEPLOY_REPO → $APP_DIR"
  if [[ -d "$APP_DIR" ]]; then
    git clone --branch "$DEPLOY_BRANCH" "$DEPLOY_REPO" "$APP_DIR"
  else
    git clone --branch "$DEPLOY_BRANCH" "$DEPLOY_REPO" "$APP_DIR"
  fi
}

env_value() {
  local key="$1"
  local file="$APP_DIR/.env"
  [[ -f "$file" ]] || return 0
  local line
  line="$(grep -E "^${key}=" "$file" | tail -n 1 || true)"
  [[ -n "$line" ]] || return 0
  printf '%s' "${line#*=}"
}

clone_or_pull
cd "$APP_DIR"

if [[ ! -f .env ]]; then
  cp .env.example .env
  log "已从 .env.example 创建 .env，请填写 TYPESAFE_API_KEY、DATABASE_URL 后按需重跑"
fi

log "安装依赖"
if [[ -f package-lock.json ]]; then
  npm ci
else
  npm install
fi

log "构建前端"
npm run build

if [[ "$SEED" -eq 1 ]]; then
  db_url="$(env_value DATABASE_URL)"
  if [[ -z "$db_url" ]]; then
    log "未配置 DATABASE_URL，跳过题库入库"
  else
    command -v psql >/dev/null || die "带 --seed 需要 psql，请先在宝塔安装 PostgreSQL"
    log "写入题库"
    psql "$db_url" -v ON_ERROR_STOP=1 -f sql/001_schema.sql
    psql "$db_url" -v ON_ERROR_STOP=1 -f sql/002_seed.sql
  fi
fi

if ! command -v pm2 >/dev/null; then
  log "安装 PM2"
  npm install -g pm2
fi

log "启动 $APP_NAME"
pm2 startOrReload ecosystem.config.cjs --update-env --only "$APP_NAME"
pm2 save

PORT_VALUE="$(env_value PORT)"
PORT_VALUE="${PORT_VALUE:-8787}"

cat <<EOF

部署完成。进程：$APP_NAME → http://127.0.0.1:${PORT_VALUE}

宝塔面板里：
1. 网站 → 添加站点（根目录可填 $APP_DIR，实际由反代接管）
2. 设置 → 反向代理 → 目标 URL：http://127.0.0.1:${PORT_VALUE}
3. SSL 用宝塔申请；防火墙只放行 80/443，不要对公网开放 ${PORT_VALUE}

更新代码再跑：
  bash $APP_DIR/scripts/bt-deploy.sh

题库入库（需 DATABASE_URL）：
  bash $APP_DIR/scripts/bt-deploy.sh --seed
EOF
