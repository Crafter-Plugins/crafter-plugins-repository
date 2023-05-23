---
to: <%= outputPath %>/<%= properties.name %>/index.js
force: true
---
const express = require('express');
const routes =require('./src/routes/healthcheck.routes.js');

const app = express();
const PORT = process.env.PORT || <%= environment.port %>;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/api', routes);

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

