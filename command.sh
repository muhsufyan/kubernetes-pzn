# create with apply
kubectl apply -f nginx.yaml
kubectl get -f nginx.yaml -o json
# read with vscode
kubectl get -f nginx.yaml -o json | code -
# akan terlihat annotation yg dibuat scra otomatis (isinya semua info). kegunaannya untuk update, rollback di deployment
kubectl delete -f nginx.yaml
# kita coba cara yg biasa digunakan
kubectl -f nginx.yaml
kubectl get -f nginx.yaml -o json
# tdk akan ada metadata annotation (yg dibuat scra otomatis) sprti cara apply. sehingga kita tdk bisa melakukan update, rollback di deployment
kubectl delete -f nginx.yaml
