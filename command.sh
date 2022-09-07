kubectl create -f service.yaml
# buat service
kubectl get services
# delete service tertentu
kubectl delete service {nama service}
# mengakses service dari dlm cluster (like mengakses kedlm container di docker)
kubectl exec nama-pod -it -- /bin/sh
# saat membuat service akan dibuatkan otomatis httpnya dlm format
# http://ip-cluster:port/ & ingat, url ini hanya dpt diakses didlm cluster kubernetes (tdk dpt diakses dr luar)
curl http://ip-cluster:port/

# LATIHAN
kubectl create -f service-nginx.yaml
kubectl get all
# tunggu sampai semuanya selesai
kubectl get services
# type nya cluster ip dan kolom CLUSTER-IP adlh ip untuk mengakses pod, jgn lupa sertakan Port di kolom PORT(S)
# if we akses 
curl http://CLUSTER-IP:PORT(S)
# maka tdk akan bisa diakses karena ip & port tsb hanya dpt diakses didlm cluster (private), tdk dpt diakses diluar cluster (no expose)
# kita harus masuk dulu ke pod 
kubectl get all # kolom NAME (nama pod)
# ex masuk ke cluster pod/nginx (pod nginx)
kubectl exec -it {nama pod} -- /bin/sh
kubectl exec -it curl -- /bin/sh
# akses service (kita sdh masuk ke pod)
curl http://CLUSTER-IP:PORT(S)
# delete all
kubectl delete all --all