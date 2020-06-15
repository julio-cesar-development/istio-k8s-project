# Istio Kubernetes project

> This is a project to try out Istio with Kubernetes

## About

## Instructions

> In order to run the deployments in K8S, run the script deploy.sh

```bash
chmod +x ./deploy.sh && bash ./deploy.sh

# to see info about K8S deployed objects
kubectl get pod,deploy,svc,ingress -n default -o wide

kubectl get pod,deploy,svc,ingress,VirtualService,Gateway,DestinationRule -n istio-system -o wide
```

## Some Envoy Docs

> https://istio.io/latest/docs/reference/commands/istioctl/
> https://istio.io/latest/docs/setup/install/istioctl/
> https://istio.io/latest/docs/reference/config/networking/destination-rule/
> https://istio.io/latest/docs/tasks/traffic-management/request-routing/
> https://istio.io/latest/blog/2017/0.1-canary/
> https://www.digitalocean.com/community/tutorials/how-to-do-canary-deployments-with-istio-and-kubernetes
> https://www.envoyproxy.io/docs/envoy/v1.5.0/intro/arch_overview/load_balancing
