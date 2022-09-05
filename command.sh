# membuat pod (submit/push ke kubernetes master melalui api kubernetes)
kubectl create -f fnamailepod.yaml
# ex buat pod nginx dari config file nginx.yaml
kubectl create -f nginx.yaml

# melihat all pod
kubectl get pod
# atau
kubectl get po
# atau
kubectl get pods

# melihat detail semua pod
kubectl get pod -o wide


# melihat detail suatu pod tertentu (lbh detail lagi untuk 1 pod) dg lbh detail lagi
kubectl describe pod {namapod}
#  ex nama podnya nginx
kubectl describe pod nginx

# tes app inside pod jalan/tdk (untuk testing saja, untuk production gunakan service bkn ini)
kubectl port-forward {namapod} {portAkses}:{portPod}

# ex nama podnya nginx
kubectl port-forward nginx 8888:80 
# artinya pod nginx dpt diakses dilokal melalui port 8888 yg akan diforward ke port nginx yaitu 80 (80 adlh port milik pod nginx & terisolasi)