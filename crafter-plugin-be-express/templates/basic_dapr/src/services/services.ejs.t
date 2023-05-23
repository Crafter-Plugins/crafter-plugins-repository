---
to: <%= outputPath %>/<%= properties.name %>/src/services/healthcheck.services.js
force: true
---
const data = require('../../data/input.json');

const getDetails = () => data.colors;


const healthCheck = () => 'OK';

module.exports = { getDetails, healthCheck };
