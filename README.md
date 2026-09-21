# 和 Jev 抢答

玩家与 Jev 比《幸运52》式短选择题。开局可选简单 / 中等 / 困难，Jev 分别晚 5 / 3 / 1 秒交卷。

```bash
cp .env.example .env
# 填入 TYPESAFE_API_KEY。没有 key 时会用本地 mock，方便先看界面。
npm install
npm run dev
```

浏览器打开 http://localhost:5173

题库可入库 PostgreSQL（Docker 映射到本机即可，不必装主机 psql）：

```bash
# .env
# DATABASE_URL=postgres://用户:密码@127.0.0.1:5432/jev_game
npm run migrate
```

`.env` 写上 `DATABASE_URL` 后，对局从该表随机抽题；没配则仍用本地短题库。已执行过的 `sql/001_*.sql`、`sql/002_*.sql` 会记入 `schema_migrations`，重复跑会跳过。

## 宝塔部署

生产只跑构建后的 Express（自带 `dist/` 页面和 `/api`）。默认目录 `/www/app/luckey52-jev-game`，进程由 PM2 监听 `.env` 里的 `PORT`（默认 8787）。

首次（在服务器上）：

```bash
bash /www/app/luckey52-jev-game/scripts/bt-deploy.sh --seed
```

已有目录时直接更新：

```bash
bash /www/app/luckey52-jev-game/scripts/bt-deploy.sh
```

脚本不会覆盖已有 `.env`。没有该文件时会从 `.env.example` 复制，请填入 `TYPESAFE_API_KEY` 和可选的 `DATABASE_URL`。

宝塔面板：

1. 软件商店安装 Node.js、Nginx；Postgres 在 Docker 里时把 5432 映射到 127.0.0.1，并在 `.env` 填写 `DATABASE_URL`
2. 网站 → 反向代理到 `http://127.0.0.1:8787`
3. SSL 用宝塔申请
4. 防火墙只放行 80/443，不要对公网开放 8787
