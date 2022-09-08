kubectl get all
kubectl create -f service-nginx-loadbalancer.yaml
kubectl get all
# see TYPE nya LoadBalancer, PORT(S) 80:31067 dimana 31067 adlh node port nya

# NAME nya adlh service/nginx-service
# kita akan melihat IP:PORT atau URL yg ekspos dg perintah
minikube service {nama service}
minikube service nginx-service