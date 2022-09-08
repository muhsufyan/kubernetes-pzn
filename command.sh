kubectl get all
kubectl create -f sharing-volume.yaml
kubectl get all
# coba akses
minikube service nginx-service
# kunjungi url di browser. yg ditampilkan di client adlh nginx sedangkan yg membuat datanya (write) adlh nodejs
# now sdh sharing volume (nginx akses volume, nodejs write volume tiap 5 detik)
kubectl delete all --all
