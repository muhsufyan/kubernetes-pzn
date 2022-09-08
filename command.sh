# show all secret
kubectl get secrets
# show detail a secret
kubectl describe secret {nama secret}
# delete a config map
kubectl delete secret {nama secret}

# LATIHAN
kubectl get all
kubectl create -f secret.yaml
kubectl get all
kubectl get configmaps
kubectl describe configmap nodejs-env-config
kubectl describe secret
kubectl describe secret nodejs-env-config


# coba akses inside  salah satu pod (container)
kubectl exec -it nodejs-env-xxx -- /bin/sh
# show all env var
env
exit
kubectl get all
# access service
minikube service nodejs-env-service
# buka browser
kubectl delete all --all
kubectl delete secret nodejs-env-config
