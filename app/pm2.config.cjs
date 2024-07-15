module.exports = {
  apps: [
    {
      name: 'react-app',
      script: 'npx',
      interpreter: 'none',
      args: 'serve -s dist -l tcp://0.0.0.0:3000',
    },
  ],
};
