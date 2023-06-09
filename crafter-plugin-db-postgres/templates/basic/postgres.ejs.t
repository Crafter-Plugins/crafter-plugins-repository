---
to: <%= outputPath %>/<%= properties.name %>/Dockerfile
force: true
---

FROM postgres:latest

ENV POSTGRES_USER <%= environment.postgres_db_user %>
ENV POSTGRES_PASSWORD <%= environment.postgres_db_password %>
ENV POSTGRES_DB <%= environment.postgres_database_name %>
ENV PGPORT <%= environment.port %>

EXPOSE <%= environment.port %>

VOLUME /var/lib/postgresql/data

CMD ["postgres"]
