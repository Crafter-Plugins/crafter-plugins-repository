---
to: <%= outputPath %>/<%= properties.name %>/nginx.conf
force: true
---
user  nginx;
worker_processes  auto;
error_log  /var/log/nginx/error.log warn;
pid        /var/run/nginx.pid;
events {
  worker_connections  1024;
}
http {
  include       /etc/nginx/mime.types;
  default_type  application/octet-stream;
  log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
  '$status $body_bytes_sent "$http_referer" '
  '"$http_user_agent" "$http_x_forwarded_for"';
  access_log  /var/log/nginx/access.log  main;
  sendfile        on;
  #tcp_nopush     on;
  
  keepalive_timeout  65;
  #gzip  on;
  #include /etc/nginx/conf.d/*.conf;

server {
  listen <%= environment.port %>;
  location / {
    root   /usr/share/nginx/html;
    index  index.html index.htm;
    try_files $uri $uri/ /index.html;
  }
  <%_ if(backends.length > 0 ) { _%>
  <%_ backends.forEach((backend) => { _%>
  location /<%= backend.properties.name %>/ {
    proxy_pass http://<%= backend.properties.name %>:<%= backend.environment.port %>/;
  }
  <%_ }); _%>
  <%_ } _%>
}
}