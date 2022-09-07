# show env var
kubectl exec nama-pod -- env

# 1 MENGAKSES LEWAT ENVIRONMENT VARIABLE
kubectl create -f service-nginx.yaml
kubectl get all
# masuk ke pod curl
kubectl exec -it curl -- /bin/sho
# now we inside pod curl, show env var
env 
# see service (NGINX_SERVICE_SERVICE_HOST & NGINX_SERVICE_SERVICE_PORT)
# agar tdk pusing mencarinya 
env | grep NGINX_SERVICE

# 2 MEGNAKSES LEWAT DNS
# formatnya
{nama-service}.{nama-namespace}.svc.cluster.local:{port}
# ex
kubectl exec -it curl -- /bin/sho
curl http://nginx-service.default.svc.cluster.local:8080



# show all endpoint
kubectl get endpoints