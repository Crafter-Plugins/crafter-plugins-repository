---
to: <%= outputPath %>/<%= properties.name %>/.env
force: true
---
PORT=<%= environment.port %>
<%_ Object.entries(environment).forEach(([key, value]) => {_%>
<% if (key !== 'port' && key !== 'PORT') { -%><%= key.toUpperCase() %>="<%= value %>"<% } %>
<%_ })_%>