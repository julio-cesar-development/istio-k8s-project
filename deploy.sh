#!/bin/bash

set -- "$1"

# canary, mirror
DEPLOY_TYPE=${1:-"canary"}
VIRTUAL_SERVICE_FILE="./virtualservice${DEPLOY_TYPE,,}.yaml"

kubectl apply -f ./namespace.yaml
kubectl apply -f ./deployment.yaml
kubectl apply -f ./service.yaml
kubectl apply -f ./apigateway.yaml
kubectl apply -f "${VIRTUAL_SERVICE_FILE}"
kubectl apply -f ./destinationrule.yaml

# CURRENT_CONTEXT=$(kubectl config view | grep "current-context" | cut -d ":" -f2 | tr -d ' ')
# kubectl config set-context "${CURRENT_CONTEXT}" --namespace=istioproject

# kubectl get -n istioproject gateway.networking.istio.io/api-gateway
# kubectl describe -n istioproject gateway.networking.istio.io/api-gateway

# kubectl get -n istioproject virtualservice.networking.istio.io/api
# kubectl describe -n istioproject virtualservice.networking.istio.io/api

# kubectl get -n istioproject destinationrule.networking.istio.io/destinationrule
# kubectl describe -n istioproject destinationrule.networking.istio.io/destinationrule

# kubectl autoscale -n istioproject deployment api-deployment-v1 --cpu-percent=50 --min=1 --max=10
# kubectl logs -n istioproject -f ${POD_NAME} -c istio-proxy
