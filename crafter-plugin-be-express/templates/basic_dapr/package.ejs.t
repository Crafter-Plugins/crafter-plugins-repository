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
    "start": "node index.js",
    "lint": "npx eslint --fix .",
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
    "eslint": "^8.33.0"
  },
  "dependencies": {
    "@dapr/dapr": "^3.0.0",
    "express": "^4.18.2",
    "cors": "^2.8.5"
  }
}