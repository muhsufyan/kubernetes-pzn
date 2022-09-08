kubectl create -f multi-container-pod.yaml
kubectl get all
kubectl exec -it curl -- /bin/sh
curl http:{IP}:8080 # nginx
curl http:{IP}:3000 # nodejs

kubectl delete all --all
