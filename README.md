# Intro
sumber : https://docs.google.com/presentation/d/1NJQqJd89k1od_o9Kz-79IQ_CQYDCJKWunCtpgkHQLi4/edit#slide=id.g741979c288_0_41<br>
slide 7 : dari vm pindah ke container. os pd container merupakan os dr host (ex pc kita osnya windows maka os host container akan windows), & os ini bersifat terisolasi jd aman.<br>
slide 8 : dg container ini kita dpt run 4 app sekaligus, di vm harus satu satu, jd proses scaling mudah<br>
kubernetes support docker<br>
slide 10 : alur docker biasanya = build image => push ke docker hub (image registry) => buat container => consume image yg tlh dibuat td => run container<br>
ini akan ribet kalau kita ingin run 5 container, hrs run satu satu & jika kita tambah container kita tdk bisa melakukan docker secara manual solusinya untuk production menggunakan kubernetes/docker swarm<br>
# kubernetes
mrpkn automation deployment, automation scaling system on production, manajemen app based on container<br>
slide 15. emot (developer) hrs buat configuration file (isinya define our app yaitu container (termasuk management resource docker such as cpu consume max, dll), disana kita buat 2 container/app dimana kuning we set node-nya 3 & lingkaran we set node-nya 2), configuration file berupa json/yml, submit (upload) configuration file td ke kubernetes master. kubernetes master akan memanage scra otomatis melalui kubernetes workers.<br>
jd tugas developer hanya buat file config lalu push ke kubernetes master, dan yg dilakukan kubernetes adlh menjlnkan config file melalui kubernetes workers<br>
### ingat if we set 2 node maka akan dibuatkan 2 app, set 5 node akan dibuatkan 5 app. jd 1 node untuk 1 app
# arsitektur kubernetes
setiap run kubernetes maka akan otomatis run kubernetes cluster, kubernetes cluster terdr atas 2 bagian yaitu kubernetes master & kubernetes nodes/workers<br>
container (app) yg kita buat sebnrnya akan berjln di workers/nodes (mengeksekusi/org lapangannya), sedangkan master itu mangemernya (org yg mengatur)<br>
nodes/workers dibagi 2 yaitu nodes yg kita buat sendiri, & cloud like gcp, tp ke3nya punya cara kerja yg sama yaitu kube-proxy, container manager
## kubernetes master
1. kube-apiserver bertugas sebagai API (gerbang untuk komunikasi) yang digunakan untuk berinteraksi dengan Kubernetes Cluster, artinya if developer want communication with kubernetes cluster so used kube-apiserver (all interaction dilakukan melalui kube-apiserver)<br>
2. etcd bertugas untuk sebagai database untuk menyimpan data Kubernetes Cluster, db-nya kubernetes (mysql-nya kubernetes, jd data dr kubernetes akan disimpan di etcd)<br>
3. kube-scheduler bertugas untuk memperhatikan aplikasi yang kita jalankan dan meminta Node untuk menjalankan aplikasi yang kita jalankan, ex app a hrs run di node mana itu diatur oleh kube-scheduler<br>
4. kube-controller-manager bertugas melakukan kontrol terhadap Kubernetes Cluster, pihak yg mengontrol/manage kobernetes nodes/workers. so if ada node baru, rusak, mati itu tugasnya kube-controller-manager<br>
5. cloud-controller-manager bertugas untuk melakukan kontrol terhadap interaksi dengan cloud provider,ex run di 2 tmpt yaitu local & cloud maka yg memanage di cloud itu dilakukan melalui cloud-controller-manager untk local melalui kube-controller-manager<br>
## kubernetes nodes
1. kubelet berjalan di setiap Node dan bertugas untuk memastikan bahwa aplikasi kita berjalan di Node, ex ada 5 node app maka untuk memastikan ke 5 app nya jln dilakukan oleh kubelet, kubelet ini dikontrol oleh kube-controller-manager<br>
2. kube-proxy berjalan di setiap Node dan bertugas sebagai proxy terhadap arus network yang masuk ke aplikasi kita dan sebagai load balancer juga, mirip firewall jd setiap request yg datang akan masuk dulu ke kube-proxy. kita juga dpt set app mana saja yg dpt menerima traffic (request, response) & mana saja yg tdk<br>
3. container-manager berjalan di setiap Node dan bertugas sebagai container manager. Kubernetes mendukung beberapa container manager seperti Docker, containerd, cri-o, rktlet, dan yang lainnya.
# alur kerja kubernetes dg docker
sblmnya dibahas alur kerja dg docker saja, now add with kubernetes<br>
slide 21. build image => push to docker hub (image registry) => buat configuration file (kubernetes) [kasus di slide kita buat/deploy 1 app segi3 & 2 app circle] => push/submit config file to kubernetes master => kubernetes workers, didistribusikan oleh scheduler & controller => run docker/container manager (get image)<br>


