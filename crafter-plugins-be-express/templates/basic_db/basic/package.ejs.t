---
to: <%= outputPath %>/<%= properties.name %>/package.json
force: true
---
{
  "name": "<%= properties.name %>",
  "version": "1.0.0",
  "description": "Standalone Backend Boilerplate using NodeJS and Express",
  "main": "index.js",
  "scripts": {
    "test": "jest",
    "test-coverage": "concurrently 'npx jest tests' 'npx jest --coverage'",
    <%_ if(databases.length === 0) { _%>
    "start": "node index.js",
    <%_ } _%>
    "lint": "npx eslint --fix .",
    <%_ databases.forEach((database) => { _%>
    "sequelize:<%= database.properties.name %>:create": "sequelize --options-path ./.sequelize-<%= database.properties.name %> --env <%= database.properties.name %> db:create",
    "sequelize:<%= database.properties.name %>:migrate": "sequelize --options-path ./.sequelize-<%= database.properties.name %> --env <%= database.properties.name %> db:migrate",
    "sequelize:<%= database.properties.name %>:migrate:undo": "sequelize --options-path ./.sequelize-<%= database.properties.name %> --env <%= database.properties.name %> db:migrate:undo",
    "sequelize:<%= database.properties.name %>:seed:undo:all": "sequelize --options-path ./.sequelize-<%= database.properties.name %> --env <%= database.properties.name %> db:seed:undo:all",
    "sequelize:<%= database.properties.name %>:seed:all": "sequelize --options-path ./.sequelize-<%= database.properties.name %> --env <%= database.properties.name %> db:seed:all",
    <%_ }) _%>
    <%_ if(databases.length > 0) { _%>
    "start": "<% databases.forEach((database) => { %> npm run sequelize:<%= database.properties.name %>:migrate && npm run sequelize:<%= database.properties.name %>:seed:undo:all && npm run sequelize:<%= database.properties.name %>:seed:all && <% }) %> npm run nodemon",
    <%_ } _%>
    "nodemon": "nodemon index.js"
  },
  "keywords": [
    "microservice",
    "backend",
    "NodeJS",
    "Express"
  ],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "concurrently": "^7.6.0",
    "nodemon": "^2.0.21",
    <%_ if(databases.length > 0) { _%>
    "sequelize-cli": "^6.6.0",
    <%_ } _%>
    "eslint": "^8.33.0"
  },
  "dependencies": {
    "express": "^4.18.2",
    <%_ if(databases.length > 0) { _%>
    "pg": "^8.9.0",
    "pg-hstore": "^2.3.4",
    "sequelize": "^6.29.0",
    <%_ } _%>
    "cors": "^2.8.5"
  }
}