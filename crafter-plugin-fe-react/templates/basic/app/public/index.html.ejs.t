---
to: <%= outputPath %>/<%= properties.name %>/public/index.html
force: true
---
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title><%= properties.name %></title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>
