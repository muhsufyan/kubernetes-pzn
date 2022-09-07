# submit/push  config file ke kubernetes master melalui api kubernetes
kubectl create -f namafileconfigDaemonset.yaml

# show all daemon set (resources nya daemonsets)
kubectl get daemonsets

# delete spesifik daemon set
kubectl delete daemonsets {nama daemonsets}

kubectl create -f daemon-nginx.yaml
kubectl get daemonsets
kubectl get nodes
kubectl get pods

# detail daemon sets tertentu
kubectl describe daemonsets {nama daemon set}

kubectl describe daemonsets daemon-nginx

# hapus daemon sets tertentu
kubectl delete daemonsets {nama daemon set}

kubectl delete daemonsets daemon-nginx

kubectl get daemonsets