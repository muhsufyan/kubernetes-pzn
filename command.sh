# submit/push  config file ke kubernetes master melalui api kubernetes
kubectl create -f nginx-repcontro.yaml
kubectl create -f nginx-replicaset.yaml

kubectl get pods

# show all replica set resources nya adlh replica set / rs)
kubectl get rs

# cek if pod kita hapus 1 saja apakah jumlah pod-nya msh sesuai dg yg kita set (kasus ini jumlah podnya 3)
kubectl get pods
# hapus pod by NAME of pod (resource = pod), name of pod didpt dari show all pods
kubectl delete pod nginx-xyz
# cek lagi, jumlah pod hrs tetap sama (sedangkan pod yg dihapus akan diganti oleh yg baru)
kubectl get pods

