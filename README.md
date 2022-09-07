# JOB
Sebelumnya kita hanya membahas tentang Pod yang berjalan tanpa henti<br>
Tapi ada kalanya kita butuh menjalankan perintah yang hanya berjalan sekali, lalu berhenti (ex migrasi)<br>
Job adalah resource di Kubernetes yang digunakan untuk menjalankan Pod yang hanya butuh berjalan sekali, lalu berhenti<br>
Pada Replication Controller, Replica Set dan Daemon Set, jika Pod mati, maka secara otomatis Pod akan dijalankan ulang. hal ini Berbeda dengan Job. Pada Job justru Pod akan mati jika pekerjaannya selesai dilakukan<br>
## contoh case use job
* Aplikasi untuk backup atau restore database
* Aplikasi untuk import atau export data 
* Aplikasi untuk menjalankan proses batch
* Dan sejenisnya (job/pekerjaan yg dilakukan 1 kali saja)

<br>
saat buat job ujung"nya akan membuat pod juga<br>
template https://github.com/khannedy/belajar-kubernetes/blob/master/templates/job.yaml<br>
untuk image lihat disini https://github.com/khannedy/belajar-kubernetes/tree/master/images/nodejs-job<br>
