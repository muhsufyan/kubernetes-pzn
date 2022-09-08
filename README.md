# INGRESS
## Masalah Saat Mengekspos Service
### Jika menggunakan NodePort
* maka semua Node harus terekspos ke public (bahaya)
* client harus tau semua ip address semua Node


### Jika menggunakan LoadBalancer<br>
* semua LoadBalancer harus terekspos ke public.
* client harus tau semua ip address semua LoadBalancer (1 service 1 ip jd ini ribet)

# PENGENALAN INGRESS (memakai domain)
Ingress adalah salah satu cara yang bisa digunakan untuk mengekspos Service<br>
Berbeda dengan LoadBalancer atau NodePort, jika menggunakan Ingress, client hanya butuh tahu satu lokasi ip adddress Ingress<br>
Ketika client melakukan request ke Ingress, pemilihan service nya ditentukan menggunakan hostname dari request (bisa memakai hostname sama tp pathnya beda, ex example.com/serviceA, example.com/serviceB <br>
Ingress hanya mendukung protocol HTTP, jd tdk bisa memakai gRPC (yg melalui tcp socket)<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/service-with-ingress.yaml<br>
untuk mengakses ingress hrs set up domain (hosting), domain hosting == domain ingress.<br>
pd kasus template kita hrs beli domain sub.domain.com & sub2.domain.com<br>
ubah ip (dik dr perintah minikube ip) jd domain dg register ip lewat etc/hosts disertai.<br>
if lewat vscode dg domain lewat perintah terminal : code /etc/hosts<br>
copas ip (dik dr perintah minikube ip) lalu tulis dibaris terakhir<br>
IP domain<br>
ex => 192.168.99.104 sub.domain.com<br>
nanti ketika kita visit sub.domain.com akan diteruskan ke ip 192.168.99.104 dari ip ini(ingress) diteruskan ke service yg sesuai dg domain yg client visit
 


