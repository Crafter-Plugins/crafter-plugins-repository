---
to:  "<%= (databases.length > 0 ? (outputPath + '/' + properties.name + '/database/config/config.js') : null) %>"
force: true
---
<% if(databases.length > 0) {%>
module.exports = {
  "development": {
    "databases": {
    <%_ databases.forEach((database, index) => { _%>
    "<%= database.properties.name %>": {
      "username": "<%= database.environment.postgres_db_user %>",
      "password": "<%= database.environment.postgres_db_password %>",
      "database": "<%= database.environment.postgres_database_name %>",
      "host": "<% if (deploymentStackPlugins.includes('KubernetesManifest')) {-%><%=database.properties.name.toLowerCase() + '.' + blueprintName.toLowerCase() + '.svc.cluster.local' %><%} else { -%><%= 'localhost' %><%} -%>",
      "dialect": "postgres",
      "port": "<%= database.environment.port %>"
    }<% if(index < databases.length - 1) { %>,<% } %>
    <%_ }) _%>
    }
  },
  "test": {
    "databases": {
    <%_ databases.forEach((database, index) => { _%>
    "<%= database.properties.name %>": {
      "username": "<%= database.environment.postgres_db_user %>",
      "password": "<%= database.environment.postgres_db_password %>",
      "database": "<%= database.environment.postgres_database_name %>",
      "host": "<% if (deploymentStackPlugins.includes('KubernetesManifest')) {-%><%=database.properties.name.toLowerCase() + '.' + blueprintName.toLowerCase() + '.svc.cluster.local' %><%} else { -%><%= 'localhost' %><%} -%>",
      "dialect": "postgres",
      "port": "<%= database.environment.port %>"
    }<% if(index < databases.length - 1) { %>,<% } %>
    <%_ }) _%>
    }
  },
  "production": {
    "databases": {
    <%_ databases.forEach((database, index) => { _%>
    "<%= database.properties.name %>": {
      "username": "<%= database.environment.postgres_db_user %>",
      "password": "<%= database.environment.postgres_db_password %>",
      "database": "<%= database.environment.postgres_database_name %>",
      "host": "<% if (deploymentStackPlugins.includes('KubernetesManifest')) {-%><%=database.properties.name.toLowerCase() + '.' + blueprintName.toLowerCase() + '.svc.cluster.local' %><%} else { -%><%= 'localhost' %><%} -%>",
      "dialect": "postgres",
      "port": "<%= database.environment.port %>"
    }<% if(index < databases.length - 1) { %>,<% } %>
    <%_ }) _%>
    }
  },
  <%_ databases.forEach((database, index) => { _%>
  "<%= database.properties.name %>": {
    "username": "<%= database.environment.postgres_db_user %>",
    "password": "<%= database.environment.postgres_db_password %>",
    "database": "<%= database.environment.postgres_database_name %>",
    "host": "<% if (deploymentStackPlugins.includes('KubernetesManifest')) {-%><%=database.properties.name.toLowerCase() + '.' + blueprintName.toLowerCase() + '.svc.cluster.local' %><%} else { -%><%= 'localhost' %><%} -%>",
    "dialect": "postgres",
    "port": "<%= database.environment.port %>"
    }<% if(index < databases.length - 1) { %>,<% } %>
  <%_ }) _%>
}
<% } %>