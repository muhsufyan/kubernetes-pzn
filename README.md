# kubernetes nodes
kubernetes nodes/workers, versi lama disbt minion
berbentuk vm / mesin fisik (server asli)
setiap node terdiri atas kubelet, kube-proxy, container manager(memanage container ex docker, dll)

lihat semua node => kubectl get node atau bisa juga kubectl get no
lihat detail node => kubectl describe node {nama_node_nya} ex nama node-nya minikube => kubectl describe node minikube