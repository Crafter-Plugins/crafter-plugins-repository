---
to: <%= outputPath %>/<%= properties.name %>/docker-entrypoint-initdb.d/init-script.js
force: true
---

const conn = new Mongo();

const db = conn.getDB('<%= environment.mongodb_database_name %>');

db.createCollection('users');

db.users.insertMany([
  { name: 'John Doe', email: 'john@example.com' },
  { name: 'Jane Smith', email: 'jane@example.com' },
  { name: 'Bob Johnson', email: 'bob@example.com' }
]);

db.users.createIndex({ email: 1 });
