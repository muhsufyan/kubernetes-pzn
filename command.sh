kubectl get all
kubectl create -f downward-api.yaml
kubectl get all
# coba akses inside  salah satu pod (container)
kubectl exec -it nodejs-env-xxx -- /bin/sh
# show all env var
env
# lihat POD_NAME, POD_IP, dll
exit
kubectl delete all --all
kubectl delete secret nodejs-env-config
