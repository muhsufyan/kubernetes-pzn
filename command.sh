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

# menghapus pod
# 1. hapus 1 pod tertentu. pod adlh nama resource
kubectl delete pod {nama pod}
# 2. hapus banyak pod. pod adlh nama resource
kubectl delete pod {nama pod 1} {nama pod 2} {nama pod n}
# ex
kubectl delete pod nginx
kubectl delete pod nginx nginx-with-label

# hapus pod memakai label
kubectl delete pod -l key=value
# ex
kubectl get pod --show-labels
# remove all pod with label environment development
kubectl delete pod -l environment=development

# hapus semua pod (atau resources lainnya) yg ada didlm namespace tertentu tanpa menghapus namespace-nya
kubectl delete pod --all --namespace {nama namespace}
# ex
kubectl delete pod --all # remove all pods in namespace default
kubectl delete pod --all --namespace finance # remove all pods in namespace finance