---
to: <%= outputPath %>/<%= properties.name %>/.env
force: true
---
PORT=<%= environment.port %>