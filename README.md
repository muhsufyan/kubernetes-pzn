## Bagaimana Cara Update Aplikasi?
Sekarang kita sudah tau bagaimana cara mem package aplikasi kita di Pod
* Menggunakan volume
* Menggunakan konfigurasi ConfigMap dan Secret
* Mengakses Pod
* Membuat Pod bisa berkomunikasi dengan Pod lain menggunakan Service<br>
Sekarang pertanyaannya, bagaimana jika kita ingin mengupdate aplikasi kita? (improvement, penambahan fitur, dll)
# Deployment
Update aplikasi secara manual bukanlah hal bijak, kesalahan kecil yang kita lakukan saat update secara manual, bisa menyebabkan downtime (ada jeda our app tdk bisa diakses karena hrs hapus dulu yg lama kemudian buat yg baru meskipun bisa memakai replace tp itu hanya dpt update images saja). Sehingga aplikasi kita tidak bisa diakses.<br>
Kubernetes memiliki fitur Deployment, yaitu resource untuk melakukan deployment aplikasi dan update aplikasi secara deklaratif menggunakan file konfigurasi. (dlm production tdk membuat pod & replica set, biasanya production memakai deployment. deployement itu didlmnya pod, replicaSet, dll)<br>
(jd paling atas itu deployment yg terdiri dr replicaSet, replicaSet terdiri dr pod)<br>
Saat kita membuat Deployment, secara otomatis Kubernetes akan membuat ReplicaSet, yang mana ReplicaSet akan secara otomatis membuat Pod<br>
Membuat Deployment hampir sama seperti membuat ReplicationSet<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/deployment.yaml<br>
images nya https://github.com/khannedy/belajar-kubernetes/tree/master/images/nodejs-web<br>
