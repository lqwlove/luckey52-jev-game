module.exports = {
  apps: [
    {
      name: "jev-game",
      script: "server/index.mjs",
      cwd: __dirname,
      instances: 1,
      exec_mode: "fork",
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
