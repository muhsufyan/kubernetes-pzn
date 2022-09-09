# PERSISTENT VOLUME
Persistent Volume sebenarnya hampir mirip dengan Volume, hanya saja cara kerjanya berbeda. Volume yg dulu dg persistent volume itu sama saja hanya ada beberapa hal yg beda & keduanya bersifat persistent (data akan selalu ada, disimpan scra permanen jd tdk akan hilang)<br>
Cara pembuatan Persistent Volume sedikit lebih ribet dibanding Volume, namun ada beberapa benefit yang bisa didapat jika menggunakan Persistent Volume. jika volume ingin mdh dimanage gunakan persistent volume<br>
## Jenis-Jenis Persistence Volume
* HostPath, berkas disimpan di Node, tidak direkomendasikan di production, hanya untuk testing, karena datanya bisa hilang
* GCEPersistentDisk, Google Cloud Persistence Disk
* AWSElasticBlockStore, Amazon Web Service Persistence Disk
* AzureFile / AzureDisk, Microsoft Azure Persistence Disk
* dan lain-lain

## Tahapan Persistent Volume
if pd volume biasa kita tinggal buat volume lalu mounting ke pod , sdngkan persistent volume lbh ribet, tahapannya<br>
* Membuat Persistent Volume(buat yaml file, bisa kita tentukan ukuran volume nya sprti 10 GB)
* Membuat Persistent Volume Claim
* Menambahkan Persistent Volume Claim ke Pod
# 
kelebhan persistent volume, saat kita membuat volume kita set ukuran nya 10 GB if use volume biasa jika terdpt 3 pod maka 1 pod bisa mengonsumsi 10 GB jd volume habis oleh 1 pod saja (pod lainnya tdk kebagian)<br> sedangkan dg persistent volume kita harus buat claim dulu disinilah kita tentukan pod 1 dpt menerima (storage nya) misalnya 2 GB (claim 2GB), kita tentukan pod 2 dpt menerima (storage nya) misalnya 2 GB (claim 2GB), dan kita tentukan pod 3 dpt menerima (storage nya) misalnya 2 GB (claim 2GB). lihat slide 237<br>

template https://github.com/khannedy/belajar-kubernetes/blob/master/templates/persistent-volume.yaml<br>


