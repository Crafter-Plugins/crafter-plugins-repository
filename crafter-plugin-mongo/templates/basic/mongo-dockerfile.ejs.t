---
to: <%= outputPath %>/<%= properties.name %>/Dockerfile
force: true
---

FROM mongo:latest

ENV MONGO_INITDB_ROOT_USERNAME <%= environment.mongodb_db_user %>
ENV MONGO_INITDB_ROOT_PASSWORD <%= environment.mongodb_db_password %>
ENV MONGO_INITDB_DATABASE <%= environment.mongodb_db_name %>

COPY mongod.conf /etc/mongod.conf

CMD ["mongod", "--config", "/etc/mongod.conf"]