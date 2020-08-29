# Image Registry Validation

An example of how to prevent loading images from specific Docker registry (quay.io) with OPA

## Prerequisites

OPA should be installed in `opa` namespace (see `ingress-validation` tutorial)

## Resources

https://www.openpolicyagent.org/docs/latest/kubernetes-primer/

## Lab

```sh
kubectl create configmap image-registry-validation --from-file=image-registry-validation.rego --dry-run -o yaml | kubectl apply -f - -n opa

kubectl create ns busybox
kubectl apply -f busybox-allowed.yaml -n busybox # Success
kubectl apply -f busybox-denied.yaml -n busybox # Fail
```
