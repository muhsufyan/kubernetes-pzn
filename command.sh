# kubernetes dashboard di minikube
# install dashboard di minikube
minikube addons enable dashboard
kubectl get all --namespace kubernetes-dashboard
# run dashboard
minikube dashboard