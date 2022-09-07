# add label to node
kubectl label node {nama node} key=value
# ex
kubectl get nodes
# add label to node minikube yaitu gpu
kubectl label node minikube gpu=true
kubectl describe node minikube 

kubectl create -f nginx-node-selector.yaml
kubectl create -f templates/replica-set-node-selector.yaml

kubectl get pods
# lihat STATUS => ContainerCreating (container tlh dibuat/ada)
# if STATUS => Pending artinya tdk ada node yg memiliki label yg sesuai, akan terus pending sampai ada node dg label yg dicari
kubectl delete pod nginx

