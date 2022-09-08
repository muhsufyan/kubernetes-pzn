kubectl get all
kubectl create -f volume.yaml
kubectl get all
kubectl exec -it nodejs-writer -- /bin/sh
cd /app/html
cat index.html
# if restart akan hilang karena type volume emptyDir

kubectl delete all --all
