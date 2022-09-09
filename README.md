# Application Scaling
Saat aplikasi kita sedang sibuk, sehingga konsumsi memory atau cpu tinggi, maka ada kemungkinan performa aplikasi kita akan turun<br>
Saat hal ini terjadi, application scaling sangat dibutuhkan<br>
Secara garis besar, ada 2 jenis application scaling; Vertical Scaling dan Horizontal Scaling<br>
perbedaan lbh lanjut https://maucoding.com/post/Perbedaan-Vertical-Scaling-dan-Horizontal-Scaling-5fc346a87aca8061d1a93eab<br>
https://dewacloud.com/blog/perbedaan-horizontal-scaling-dan-vertical-scaling/<br>
# Vertical Scaling
Vertical Scaling adalah cara application scaling dengan cara mengupgrade computational resource di aplikasi kita.<br>
Misal dari 1 cpu menjadi 2 cpu, dari 1GB memory menjadi 2GB memory.<br> 
Namun permasalahan Vertical Scaling adalah, akan ada batasnya (ex Node memorynya 10 GB maka pod mentoknya di 10 GB, atau cpu node nya 4 core maka pod nya paling tinggi hanya 4 core). Pod di kubernetes tidak bisa menggunakan resource melebihi resource Node yang ada
# Horizontal Scaling
Horizontal Scaling adalah application scaling dengan cara membuat Pod baru agar beban pekerjaan bisa didistribusikan ke Pod baru tersebut.(ada 3 pod tp now sibuk maka kita bisa tambah 6 pod)<br>
Scalability terbaik harusnya dicapai dengan Horizontal Scaling, karena dengan Horizontal Scaling, kita tidak butuh upgrade Node dengan resource yang lebih tinggi. <b>(harga horizontal scaling lbh murah drpd vertikal scaling)</b>
# Vertical Pod Autoscaler
* Vertical Pod Autoscaler adalah kemampuan secara otomatis application scaling secara Vertical dengan cara mengupgrade resource Pod dan menurunkan secara otomatis jika diperlukan
* Saat ini, fitur ini masih dalam tahap development. Namun kita bisa memantau fitur ini di halaman github kubernetes : https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler (saat video pzn tentang kubernetes dibuat)
* Fitur sudah bisa dicoba di beberapa Cloud Provider seperti Google Cloud dan Amazon Web Service
    * https://cloud.google.com/kubernetes-engine/docs/concepts/verticalpodautoscaler
    * https://docs.aws.amazon.com/eks/latest/userguide/vertical-pod-autoscaler.html

# Horizontal Pod Autoscaler
Horizontal Pod Autoscaler adalah kemampuan secara otomatis application scaling secara Horizontal dengan cara menambah Pod baru dan menurunkan secara otomatis jika diperlukan.<br>
Horizontal Pod Autoscaler atau disingkat HPA, merupakan object di Kubernetes<br>
Kita bisa membuat HPA, dan menghapus HPA di Kubernetes<br>
HPA bekerja dengan cara mendengarkan data metrics dari setiap Pod, dan jika sudah mencapai batas tertentu, HPA akan akan melakukan auto scaling (baik itu menaikkan Pod atau menurunkan jumlah Pod) [saat sibuk pod akan dinaikan oleh HPA tp if pod tdk sibuk/normal lagi maka HPA akan menurunkan pod/hapus pod]<br>
slide 269: penggunaan computational resources, pod akan didengarkan oleh metrics server, metrics server akan memberi report ke HPA & metrics server ini akan trigger HPA untuk menaikan & menurunkan pod & dilakukan (petugas pelaksana) oleh deployment<br>
minReplicas pd HPA disarankan 2, 1 untuk backup<br>

https://github.com/khannedy/belajar-kubernetes/blob/master/templates/horizontal-pod-autoscaler.yaml<br>
