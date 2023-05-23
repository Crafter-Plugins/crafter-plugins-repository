---
to: <%= outputPath %>/<%= properties.name %>/Dockerfile
force: true
---
FROM node:alpine

WORKDIR /app

COPY package.json package.json

RUN npm install

COPY . .

ENTRYPOINT ["npm", "start"]