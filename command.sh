# pastikan metrics-server di minikube sdh enable, dg perintah (show all addons)
minikube addons list
minikube addons enable metrics-server
kubectl get all --namespace kube-system
# akan ada pod metrics-server

# Membuat horizontal pod autoscaler (HPA)
kubectl create -f namafileConfigHPA.yaml
# atau
kubectl apply -f namafileConfigHPA.yaml
# show all HPA 
kubectl get hpa
# detail a hpa
kubectl describe hpa {nama hpa}
# hapus hpa
kubectl delete hpa {nama hpa}

# LATIHAN DG MINIKUBE
kubectl apply -f horizontal-pod-autoscaler.yaml
kubectl get all
kubectl delete -f horizontal-pod-autoscaler.yaml