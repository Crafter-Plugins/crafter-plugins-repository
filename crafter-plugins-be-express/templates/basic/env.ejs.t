---
to: <%= outputPath %>/<%= properties.backend_name %>/.env
force: true
---
PORT=<%= environment.port %>