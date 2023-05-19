---
to:  "<%= (backends.length >= 1 ? (outputPath + '/' + properties.name + '/src/constants/apiEndPoints.js') : '') %>"
force: true
---
export const BACKEND_INFO = {
<% backends.forEach((backend) => { %>
  <%= backend.name %>: {
    BACKEND_URL: '/<%= backend.properties.name %>',
    PING_BACKEND: {
      baseURL: '/<%= backend.properties.name %>',
      url: 'api/ping',
      method: 'get',
    },
  },
<% }) %>
};