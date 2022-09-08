# Manage Kubernetes Object (mko)
Sebelumnya, kita sudah tau cara untuk membuat object di Kubernetes (job, pod, dll) menggunakan perintah: kubectl create -f namafile.yaml<br>
Sebenarnya ada perintah lain untuk melakukan management Kubernetes object, seperti mengupdate, melihat atau menghapus
## 1) Imperative Management
* kubectl create -f namafile.yaml => membuat kubernetes object 
* kubectl replace -f namafile.yaml => mengubah/update kubernetes object (hanya sebagian kecil resources/objek saja yg dpt di update/ubah) 
* kubectl get -f namafile.yaml -o yaml/json => melihat/show kubernetes object (-o artinya keluaran(print outnya ingin berbentuk yaml/json) jika ingin yaml maka -o yaml if want json maka -o json)
* kubectl delete -f namafile.yaml => menghapus kubernetes object 

## 2) Declarative Management
apply itu create / update artinya akan dibuatkan jika blm ada atau jika ada maka akan diupdate<br>
* kubectl apply -f namafile.yaml => Membuat atau mengupdate kubernetes object

### Declarative Management
Saat menggunakan declarative management, file konfigurasi akan disimpan di dalam annotations object<br>
Hal ini sangat bermanfaat saat menggunakan object Deployment (yang akan dibahas nanti)<br>
Rata-rata sekarang kebanyakan Declarative Management lebih sering digunakan dibandingkan Imperative Management<br>
