# run/menjlnkan ingress di minikube
# show all list addons yg ada di minikube
minikube addons list
minikube addons enable ingress
# liat proses sdh beres/blm
kubectl get pods --namespace kube-system

kubectl create -f ingress.yaml
# show all ingress
kubectl get ingresses
kubectl delete ingress {nama ingress}
# see ip minikube
minikube ip

# LATIHAN
kubectl create -f service-nginx-ingress.yaml
kubectl get all
kubectl get ingresses

kubectl delete ingresses nginx-service
kubectl delete all --all
