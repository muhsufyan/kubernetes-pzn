# Pod
adlh unit terkecil yg dpt dideploy ke kubernetes cluster<br>
pod dpt berisi 1 / beberapa container (dg kata lain our app wrapped/dibungkus dlm pod), if docker 1 app 1 container. biasanya 1 pod 1 container tp sesuai kebthan<br>
adlh app yg run di kubernetes cluster (our app run dlm bntk pod di kubernetes cluster)<br>
1 node dpt terdiri dari beberapa pod dan 1 pod dpt terdiri dr beberapa container. ex 1 node terdiri atas 2 pod dimana pod 1 terdpt 2 container (A & B) sedangkan pod 2 hanya ada 1 container (C)<br>
slide . contoh dr pod<br>
1 pod tdk bisa run di 2 node scra setengah" (partial), ex container x need 2 gb, 1 gb on node 1 another (1 gb lainnya) on node 2 hal ini tdk bisa. jd usahakan saat buat node buat agak besar spek hardware-nya<br>
nama pod bersifat unik jd tdk boleh sama.<br>
## why require pod (not container)?
pod (like abstaction layer) akan memanage container sesuai dg container manager yg dipilih(ex docker, dll)<br>
scaling app, ex suatu app depend ke app lainnya misal our app need mysql container.<br>

see all pod => kubectl get pod<br>
see detail pod => kubectl describe pod nama_pod_yg_ingin_dilihat<br>

# membuat pod
lihat template untuk membuat config file (berjenis pod) dlm bntk yaml<br>
https://github.com/khannedy/belajar-kubernetes<br>
why template ? karena ujung"nya hanya merubah nama pod, container, port pod, dll<br>
kita buat contohnya di nginx.yaml<br>
stlh itu untuk membuat pod (submit/push ke kubernetes master) perintahnya => kubectl create -f filepod.yaml<br>
ex kubectl create -f nginx.yaml<br>
melihat all pod => kubectl get pod<br>
bisa juga kubectl get {po atau pod atau pods}<br>
melihat detail semua pod => kubectl get pod -o wide<br>
melihat detail suatu pod tertentu (lbh detail lagi untuk 1 pod) => kubectl describe pod namapod<br>
mengakses pod (hanya mengetes saja (nyala/tdk), bkn expose port keluar. hal ini tdk dilakukan diproduction. untuk production menggunakan service) => kubectl port-forward namapod portAkses:portPod<br>
ex kubectl port-forward nginx 8888:80 artinya pod nginx dpt diakses dilokal melalui port 8888 yg akan diforward ke port nginx yaitu 80 (80 adlh port milik pod nginx & terisolasi)<br>
# NOTE : TEMPLATE CONFIG FILE YG KITA COPAS DISINI BERASAL DARI LINK https://github.com/khannedy/belajar-kubernetes, & AKAN SELALU DIUPDATE OLEH PENULISNYA JD LIHAT SAJA GITHUB KHANNEDY TSB. DISINI HANYA MENAMBAHKAN KETERANGAN SAJA