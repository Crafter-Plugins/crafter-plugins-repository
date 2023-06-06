---
to: <%= outputPath %>/<%= properties.name %>/mongod.conf
force: true
---
net:
  port: <%= environment.port %>
  bindIp: 0.0.0.0

storage:
  dbPath: /data/db
  journal:
    enabled: true

systemLog:
  destination: file
  path: /var/log/mongodb/mongod.log
  logAppend: true

processManagement:
  fork: true
  pidFilePath: /var/run/mongodb/mongod.pid
