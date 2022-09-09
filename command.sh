# buat persistent volume
kubectl create -f fileConfigpersistentVolume.yaml
# atau 
kubectl apply -f fileConfigpersistentVolume.yaml
# show persistent volume
kubectl get pv
# detail persistent volume
kubectl describe pv {nama persistent volume}
# show persistent volume claim
kubectl get pvc 
# detail persistent volume claim
kubectl describe pvc {nama persistent volume claim}
# delete persistent volume
kubectl delete pv {nama persistent volume}
# delete persistent volume claim
kubectl delete pvc {nama persistent volume claim}

# LATIHAN
kubectl apply -f persistent-volume.yaml
kubectl get -f persistent-volume.yaml
# masuk kedlm pod nodejs-writer
kubectl exec -it nodejs-writer -- /bin/sh
# masuk ke mounting volume
cd /app/html
ls -l
cat index.html
exit
# hapus persistent volume & claim nya