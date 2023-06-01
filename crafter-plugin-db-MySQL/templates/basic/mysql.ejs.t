---
to: <%= outputPath %>/<%= properties.name %>/Dockerfile
force: true
---
<% 
    // var environment = {
    //     mysql_root_password: "crafter",
    //     mysql_db_user: "crafter",
    //     mysql_db_password: "crafter",
    //     mysql_database_name: "crafterdb",
    //     port: "3306"
    // }

    // var properties = {
    //     name: "mysql",
    // }

    // var outputPath = "output"
%>

FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD <%= environment.mysql_root_password %>
ENV MYSQL_USER <%= environment.mysql_db_user %>
ENV MYSQL_PASSWORD <%= environment.mysql_db_password %>
ENV MYSQL_DATABASE <%= environment.mysql_database_name %>
ENV MYSQLPORT <%= environment.port %>

EXPOSE <%= environment.port %>

VOLUME /var/lib/mysql

CMD ["mysqld"]