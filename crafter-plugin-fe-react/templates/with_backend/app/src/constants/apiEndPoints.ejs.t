---
to:  "<%= (backends.length >= 1 ? (outputPath + '/' + properties.name + '/src/constants/apiEndPoints.js') : '') %>"
force: true
---
export const BACKEND_INFO = {
<% backends.forEach((backend) => { %>
  <%= backend.properties.name %>: {
    BACKEND_URL: '/<%= backend.properties.name.toLowerCase() %>',
    PING_BACKEND: {
      baseURL: '/<%= backend.properties.name.toLowerCase() %>',
      url: 'api/ping',
      method: 'get',
    },
  },
<% }) %>
};