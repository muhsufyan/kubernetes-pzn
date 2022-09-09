# Rollback Deployment
Saat misal terjadi masalah ketika deploy aplikasi terbaru menggunakan Deployment, cara yang paling mudah agar tidak terjadi error terlalu lama adalah rollback ke Deployment sebelumnya<br>
Cara manualnya bisa dilakukan dengan cara meng-update menggunakan Deployment baru, namun versi aplikasinya di set ke versi sebelumnya<br>
Atau ada cara yang lebih mudah, kita bisa menggunakan fitur rollout Kubernetes untuk rollback Deployment ke versi Deployment sebelumnya<br>

## rollout
mrpkn perintah yg digunakan untuk melihat proses update deployment, tdk semua punya kemampuan melakukan rollout hanya beberapa<br>
untuk mengetahui resource apa saja yg punya kemampuan rollout perintahnya<br>
kubectl rollout<br>
hanya ada 3 yg punya kemampuan rollout : deployments, daemonsets, statefulsets<br>
## kubernetes rollout
brkt adlh perintah yg digunakan untuk melihat perubahan rollout<br>
NOTE object nya diganti dg pilih salah satu brkt deployments, daemonsets, statefulsets<br>
* kubectl rollout history {object} {name deployment nya} # Melihat history rollout
* kubectl rollout pause {object} {name deployment nya} # Menandai sebagai pause
* kubectl rollout resume {object} {name deployment nya} # Resume pause
* kubectl rollout restart {object} {name deployment nya} # Merestart rollout
* kubectl rollout status {object} {name deployment nya} # Melihat status rollout
* kubectl rollout undo {object} {name deployment nya} # Undo ke rollout sebelumnya (rollback)

## kita coba implementasinya deployment lalu update deployment versi 2 lalu upadate versi 3, lalu kita rollback ke versi 2
