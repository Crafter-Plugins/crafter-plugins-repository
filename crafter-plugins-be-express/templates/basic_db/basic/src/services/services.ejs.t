---
to: <%= outputPath %>/<%= properties.name %>/src/services/healthcheck.services.js
force: true
---
<% if(databases.length === 0){ %>
const data = require('../../data/input.json');

const getDetails = () => data.colors;
<% } %>


<% if(databases.length > 0){ %>
<%_ databases.forEach((db) => { _%>
const {<%= db.properties.name %>} = require('../models');
<%_ }) _%>

const getDetails = async () => {
  const response = [];
  <%_ databases.forEach((db, i) => { _%>
  response.push(await <%= db.properties.name %>.findAll());
  <%_ }) _%>
  return response;
};
<% } %>

const healthCheck = () => 'OK';

module.exports = { getDetails, healthCheck };
