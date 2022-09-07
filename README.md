# Replication Controller
bertugas untuk memastikan bahwa Pod selalu berjalan. if we membuat pod menggunakan replication controller maka pod akan dipastikan dulu berjalan<br>
kenyataannya biasanya akan membuat pod sebanyak 2/lbh, dibanding manual kita gunakan replication controller saja. ketika ex we buat 1 node yg terdiri atas 4 pod dimana 1 pod-nya mati, if pod dibuat manual maka pod yg mati tdk akan jln sedangkan jika menggunakan replication controller maka 1 (atau n) pod yg mati akan dibuatkan yg baru sehingga total pod yg jln tetap 4 [lihat slide 75]. note pod yg mati (baik dg manual/replication controller) akan berada di pod 2<br>
### mulai sekarang buatlah pod melalui controller (sprt replication controller, dll) jgn buat scra manual sprti sblm"nya
## isi replication controller
* Label Selector, sebagai penanda pod mana yg mau di maintainance oleh replication controller.
* Replica Count, jumlah Pod yang seharusnya berjalan. pd kasus diatas hrs ada 4 pod, if kurang maka akan di run ulang
* Pod Template, template yang digunakan untuk menjalankan Pod. berisi configuration pod yg digunakan untuk membuat pod. jd seblmnya kind: Pod sekarang kind: Replication Controller.


# membuat replication controller
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/replication-controller.yaml<br>

# menghapus replication controller
## sblm menghapus replication controller(rc)
* saat menghapus rc maka otomatis pod yg berada pada label selectornya akan ikut terhapus (semua pod yg ada didlm rc yg dihapus akan ikut terhapus semuanua)
* if want delete rc without pod - pod label selector nya maka tambahkan opsi --cascade=false. default cascade adlh true (pod di rc akan dihapus)

<br>
kubectl delete rc {nama rc}
kubectl delete rc {nama rc} --cascade=false
