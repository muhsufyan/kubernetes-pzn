# DAEMON SET
Saat menggunakan Replica Set atau Replication Controller, Pod akan dijalankan di Node secara random oleh si Kubernetes. ex we buat replica set dg 3 pod maka 3 pod akan dijlnkan scra random didlm node<br>
Tp jika kita ingin menjalankan Pod di setiap Node yang ada di Kubernetes, dan tiap Pod hanya boleh jalan 1 di Node-nya, kita bisa menggunakan Daemon Set. dg demikan akan dipastikan hanya ada 1 pod yg jln dlm node tersebut, tp jumlahnya tdk kita tentukan<br>
Secara default Daemon Set akan menjalankan Pod di setiap Node yang ada di Kubernetes Cluster (ex we buat daemon set A maka pod A akan dijlnkan disemua node, jd kalau ada 10 node akan ada 10 pod yg dijnkan karena 1 node itu 1 pod (1 node akan diinstall 1 daemon pod, lihat slide 99)), kecuali jika kita meminta hanya jalan di Node tertentu (dibhs selanjutnya)<br>
## Contoh Kasus Penggunakan Daemon Set
* Aplikasi untuk monitoring Node (mengetahui penggunaan cpu, memory, harddisk dll)
* Aplikasi untuk mengambil log di Node
* Dan sejenisnya

<br>
template https://github.com/khannedy/belajar-kubernetes/blob/master/templates/daemon-set.yaml<br>