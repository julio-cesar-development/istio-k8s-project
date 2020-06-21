#!/bin/bash

kubectl apply -f ./namespace.yaml
kubectl label namespace istio-project istio-injection=enabled --overwrite

kubectl apply -f ./api-deployment.yaml
kubectl apply -f ./api-svc.yaml
kubectl apply -f ./api-hpa.yaml

kubectl apply -f ./api-gateway.yaml
kubectl apply -f ./api-virtual-svc.yaml
kubectl apply -f ./api-destination-rule.yaml

CURRENT_CONTEXT=$(kubectl config view | grep "current-context" | cut -d ":" -f2 | tr -d ' ')
kubectl config set-context "${CURRENT_CONTEXT}" --namespace=istio-project
