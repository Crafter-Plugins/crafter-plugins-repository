---
to: <%= outputPath %>/dapr/config.yaml
force: true
---

apiVersion: dapr.io/v1alpha1
kind: Configuration
metadata:
  name: dapr-config
  namespace: <%= blueprintName.toLowerCase() %>

spec:
  tracing:
    enabled: true
    samplingRate: "1"
    expandParams: true
    includeBody: true
    zipkin:
      endpointAddress: <% if (deploymentStackPlugins.includes('KubernetesManifest')) { %>http://zipkin.<%= blueprintName %>.svc.cluster.local:9411/api/v2/spans
                        <% } else { %>http://zipkin:9411/api/v2/spans<% } %>
