# create deployment
kubectl apply -f namafiledeployment.yaml
# show deployment
kubectl get deployments
# show detail a deployment
kubectl describe deployment {nama deployment}
# remove deployment
kubectl delete deployment {nama deployment}

# LATIHAN
kubectl apply -f deployment.yaml
kubectl get deployments
kubectl get all
# akan ada deployment & replica set 
# jlnkan service
minikube service nodejs-web-service
# buka browser & visit ip with port 
kubectl describe deployment nodejs-web
kubectl delete -f deployment.yaml
kubectl get all