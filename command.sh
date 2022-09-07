# show NodePort di minikube (ip & port)
minikube service {nama-service}

kubectl create -f service-nginx-nodeport.yaml
kubectl get all
# melihat nodeport (ip(URL) & port(TARGET PORT)) yg diekspos (dpt diakses dr luar)
minikube service nginx-service
# now dpt mengakses dari luar, ketikan saja di browser URL:TARGET PORT, nanti dr URL akan redirect ke service dilanjutkan ke pod