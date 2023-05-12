# Crafter Kubernetes Plugin

This is a __DeploymentStack__ plugin.
It creates the following Kubernetes resources:

- A deployment for each service in the blueprint
- A Kubernetes namespace for the blueprint, name of namespace is same as the blueprint blueprint name.
- A Kubernetes service for each service in the blueprint
- A Kubernetes Network Policy that allows egress and ingress between all pods in the same namespace (namespace name is same as the blueprint name)