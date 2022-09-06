# probe (pengecekan di kubernetes)
replication controller & replica set sangat bergantung pada probe<br>
saat menjlnkan pod di node kubernetes maka akan dilakukan pengecekan oleh kubelet<br>
kubelet akan melakukan 3 pengecekan yaitu<br>
1. liveness => pengecekan dimana ketika response tdk sehat (our app not run) maka pod akan direstart, pengecekan dilakukan scra periodik
2. readiness => pengecekan dimana ketika response tdk sehat dr our app maka all traffic akan distop (tdk ada traffic yg masuk kedlm pod), lalu cek lagi sampai sehat & if sehat baru akan menerima traffict lagi
3. sartup => mengecek diawal saja, untuk memastikan our app siap berjalan.

# mekanisme pengecekan (probe)
1. HTTP Get
2. TCP Socket
3. Command Exec (mengeksekusi command)

<br>
template-nya https://github.com/khannedy/belajar-kubernetes/blob/master/templates/pod-with-probe.yaml<br>
status CrashLoopBackOff terjd ketika dinyalakan lagi (di restart) scra terus menerus error karena kita masukkan endpointnya salah hrsnya / saja<br>
ex ketika endpoint tembak ke db/api lain tinggal responsenya selain 200 maka sistem akan di restart<br>

## konfig probe
* initialDelaySeconds, waktu setelah container jalan dan dilakukan pengecekan, default nya 0 tp jgn set 0 karena ketika nyala probe-nya akan langsung melakukan pengecekan(app butuh boot)
* periodSeconds, seberapa sering pengecekan dilakukan, default nya 10
* timeoutSeconds, waktu timeout ketika pengecekan gagal, default 1
* successThreshold, minimum dianggap sukses setelah berstatus failure, default 1
* failureThreshold, minimum dianggap gagal, default 3
