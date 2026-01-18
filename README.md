# Laravel K8s GitOps (Minikube)

This repo contains Kubernetes manifests organized with Kustomize:
- `base/` : shared resources
- `overlays/dev/` : dev environment customization
- `applications/` : (optional) ArgoCD application definitions

## Prerequisites
- Kubernetes cluster (tested on Minikube)
- `kubectl`
- `kustomize` (or `kubectl` with `-k`)
- Ingress controller enabled in Minikube

## Deploy (manual, pre-ArgoCD)
```bash
kubectl apply -k overlays/dev

