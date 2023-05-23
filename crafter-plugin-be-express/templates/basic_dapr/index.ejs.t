---
to: <%= outputPath %>/<%= properties.name %>/index.js
force: true
---
const express = require('express');
const { DaprClient, HttpMethod } = require('@dapr/dapr');
const routes = require('./src/routes/healthcheck.routes.js');

const app = express();
const PORT = process.env.PORT || parseInt(process.env.APP_PORT) || 5005 || <%= environment.port %>;
const daprHost = process.env.DAPR_HOST || 'localhost';
const daprPort = process.env.DAPR_HTTP_PORT || 3500;


async function start() {
  const client = new DaprClient(daprHost, parseInt(daprPort));

  const serviceAppId = '<%= properties.name %>';
  const serviceMethod = 'api/ping';
  const serviceMethod2 = 'api/';

  const response = await client.invoker.invoke(serviceAppId, serviceMethod, HttpMethod.GET);
  console.log('response ', response);
  const response2 = await client.invoker.invoke(serviceAppId, serviceMethod2, HttpMethod.GET);
  console.log('response2 ', response2);
}
start().catch((e) => {
  console.error(e.message);
  process.exit(1);
});
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/api', routes);

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

