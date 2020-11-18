# Istio Kubernetes project

> This is a project to try out Istio with Kubernetes

## About

> Istio is a open source software used to handle services on Kubernetes using custom resource definitions (CRDs), and with its service mesh Istio can offer several features like A/B testing, canary rollouts, traffic mirroring, and also uses Envoy proxy on injected sidecars.

## Instructions

> In order to run the deployments in K8S, run the script deploy.sh

```bash
chmod +x ./deploy.sh && bash ./deploy.sh [canary|mirror]

# to see info about K8S deployed objects
kubectl get pod,deploy,svc,hpa -n istio-project -o wide

kubectl get virtualservice,gateway,destinationrule -n istio-project -o wide


kubectl get pod,deploy,svc -n istio-system -o wide
```

## Canary deploy overview

> It will deploy 2 versions of the API, and Istio will make the distribution of requests based on the weight of destination rules

## Mirror deploy overview

> It will deploy 2 versions of the API, and Istio will mirror the requests from V1 to V2

![Architecture](https://raw.githubusercontent.com/julio-cesar-development/istio-k8s-project/master/canary-deploy.png)

## Some Istio/Envoy Docs

[https://istio.io/latest/docs/reference/commands/istioctl/](https://istio.io/latest/docs/reference/commands/istioctl/)

[https://istio.io/latest/docs/setup/install/istioctl/](https://istio.io/latest/docs/setup/install/istioctl/)

[https://istio.io/latest/docs/reference/config/networking/destination-rule/](https://istio.io/latest/docs/reference/config/networking/destination-rule/)

[https://istio.io/latest/docs/tasks/traffic-management/request-routing/](https://istio.io/latest/docs/tasks/traffic-management/request-routing/)

[https://istio.io/latest/blog/2017/0.1-canary/](https://istio.io/latest/blog/2017/0.1-canary/)

[https://www.digitalocean.com/community/tutorials/how-to-do-canary-deployments-with-istio-and-kubernetes](https://www.digitalocean.com/community/tutorials/how-to-do-canary-deployments-with-istio-and-kubernetes)

[https://www.envoyproxy.io/docs/envoy/v1.5.0/intro/arch_overview/load_balancing](https://www.envoyproxy.io/docs/envoy/v1.5.0/intro/arch_overview/load_balancing)
