# Mengekspos Service
Kadang ada kebutuhan kita perlu untuk mengekspos service keluar<br>
Tujuannya adalah agar aplikasi dari luar kubernetes cluster bisa mengakses Pod yang berada di belakang service tersebut<br>
## Tipe Service
* ClusterIP: Mengekpos Service hanya di dalam internal kubernetes cluster
* ExternalName: Memetakan Service ke externalName (misalnya: example.com). (service untuk nembak ke external. dari dlm kubernetes keluar)
* NodePort: Mengekspos Service pada setiap IP node dan port yang sama. Kita dapat mengakses Service dengan tipe ini, dari luar cluster melalui <NodeIP>:<NodePort>. (setiap node dlm kubernetes akan dibuatkan 1 pod, & pod ini if diakses maka akan langsung mengakses servicenya, & ipnya adlh node. if megnakses NodePort maka akan redirect ke NodeIP. so if mengakses dr luar tinggal lewat IP Nodenya). (dr luar ke dalam)
* LoadBalancer: Mengekspos Service secara eksternal dengan menggunakan LoadBalancer yang disediakan oleh penyedia layanan cloud. (dr luar ke dalam)

<br>
default-nya ClusterIP

## Cara Untuk Mengekspos Service
* Dengan menggunakan NodePort, sehingga Node akan membuka port yang akan meneruskan request ke Service yang dituju.
* Dengan menggunakan LoadBalancer, sehingga Service bisa diakses via LoadBalancer, dan LoadBalancer akan meneruskan request ke NodePort dan dilanjutkan ke Service
* Menggunakan Ingress, dimana Ingress adalah resource yang memang ditujukan untuk mengekspos Service. Namun Ingress hanya beroperasi di level HTTP

