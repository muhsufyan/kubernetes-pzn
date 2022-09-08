kubectl get all
kubectl create -f environment-variable.yaml
kubectl get all
# coba akses inside pod nodejs-writer
kubectl exec -it nodejs-writer -- /bin/sh
# show all env var
env
# cari HTML_LOCATION
# make sure save to that volume
cd /app/folder-from-env
ls 
# see code html file (update every 5 minutes)
cat index.html
exit
kubectl delete all --all
