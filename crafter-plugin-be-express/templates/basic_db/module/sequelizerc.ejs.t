---
to: <%= outputPath %>/<%= properties.name %>/.sequelize-<%= database.properties.name %>
force: true
---
const path = require('path');

module.exports = {
  config: path.join(__dirname, 'database/config/config.js'),
  'migrations-path': path.join(__dirname, 'database/migrations/<%= database.properties.name %>'),
  'seeders-path': path.join(__dirname, 'database/seeders/<%= database.properties.name %>'),
  'models-path': path.join(__dirname, 'src/models')
};