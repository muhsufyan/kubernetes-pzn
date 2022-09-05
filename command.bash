# lihat semua node
kubectl get node 
# atau bisa juga 
kubectl get no


# lihat detail suatu nodes formatnya
kubectl describe node {nama_node_nya}

# contoh
kubectl describe node minikube # nama node nya minikube
kubectl describe node docker-desktop # nama node nya docker