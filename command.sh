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
kubectl get -f deployment.yaml
kubectl get all
# jlnkan service
minikube service nodejs-web-service
# buka browser & visit ip with port 
# NOW UPDATE KE DEPLOYMENT TERBARU
kubectl apply -f deployment-update.yaml
kubectl get all
# yg lama akan Terminating, replica set tdk akan dihapus hal ini jika ingin melakukan rollback deployment. defaultnya history replica set adlh 10
kubectl describe deployment nodejs-web
kubectl delete -f deployment.yaml
kubectl get all