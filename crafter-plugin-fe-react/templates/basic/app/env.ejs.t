---
to: <%= outputPath %>/<%= properties.name %>/.env
force: true
---
PORT=<%= environment.port %>
<%_ if(envVariables.length > 0 ) {_%>
<%_ envVariables.forEach((envVariable) => {_%>
<%= envVariable.name.toUpperCase() %>="<%= envVariable.properties.value %>"
<%_ })_%>
<%_ }_%>