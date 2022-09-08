# show all config map
kubectl get configmaps
# show detail a config map
kubectl describe configmap {nama config map}
# delete a config map
kubectl delete configmap {nama config map}

# LATIHAN
kubectl get all
kubectl create -f configmap.yaml
kubectl get all
kubectl get configmaps
kubectl describe configmap nodejs-env-config
# coba akses inside  salah satu pod 
kubectl exec -it nodejs-env-xxx -- /bin/sh
# show all env var
env
exit
# access service
minikube service nodejs-env-service
# buka browser
kubectl delete all --all
kubectl get configmaps
kubectl delete configmap nodejs-env-config
