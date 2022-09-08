# UPDATE DEPLOYMENT
Untuk update Deployment, caranya sangat mudah, kita hanya tinggal gunakan perintah apply lagi untuk mengupdate Deployment terbaru<br>
Saat Deployment terbaru dieksekusi, secara otomatis Deployment akan membuat ReplicaSet baru, lalu menyalakan Pod baru, setelah Pod siap, Deployment akan menghapus Pod lama secara otomatis.<br>
Ini membuat proses update berjalan seamless, dan tidak terjadi downtime<br>
example case https://github.com/khannedy/belajar-kubernetes/blob/master/examples/deployment-update.yaml<br>
deployment.yaml adlh versi 1 sedangkan update-deployment.yaml adlh versi 2 (update dr versi 1). service tdk kita update<br>
