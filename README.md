# Install
install dilocal kadang terjd error, ini wajar, jika ingin langsung saja di server<br>
for install on local bisa menggunakan docker / minikube (lbh ribet dr docker, need hyper-v / virtualBox), link minikube https://github.com/kubernetes/minikube<br>
di local (baik docker/minikube) hanya suppoer 1 node saja, jika ingin banyak node hrs di server<br>
untuk berkomunikasi dg kube-api maka hrs sesuai format, agar memudahkan gunakan kubectl<br>
kubectl used for berinteraksi dg cluster kubernetes<br> 
https://kubernetes.io/id/docs/tasks/tools/<br>
masukkan kubectl kedlm path agar dpt diakses dimana saja<br>
cek kubernetes jln/tdk, perintah => kubectl version<br>
hrs ada Client Version (kubectl) & Server Version (kubernetes cluster)<br>
minikube => minikube stop<br>
minikube start<br>