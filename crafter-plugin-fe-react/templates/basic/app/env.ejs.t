---
to: <%= outputPath %>/<%= properties.name %>/.env
force: true
---
PORT=<%= environment.port %>
<%_ if(environment.length > 0 ) {_%>
<%_ environment.forEach(([key, value]) => {_%>
<%= key.toUpperCase() %>="<%= value %>"
<%_ })_%>
<%_ }_%>