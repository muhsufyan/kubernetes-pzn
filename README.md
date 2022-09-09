# StatefulSet
Pod, ReplicaSet, ReplicationController, Deployment, itu semua cocok digunakan untuk aplikasi jenis stateless<br>
Stateless artinya aplikasi kita tidak menyimpan state atau data. Jadi jika ditengah jalan aplikasi kita dihapus dan dibuat ulang, tidak akan bermasalah<br>
Namun bagaimana dengan aplikasi yang stateful? Seperti contohnya database? Yang harus menyimpan data? Dan tidak bisa sembarangan dihapus di tengah jalan ketika kita melakukan update aplikasi<br>
mysql, postgresql itu termasuk stateful karena menyimpan data & tdk bisa dihapus sembarangan<br>
## Stateless dengan Persistent Volume
PersistentVolume pun tidak akan membantu jika kita memiliki aplikasi yang stateful, karena semua Pod akan meng-claim PersistentVolume yang sama, dan direktori yang sama (dg volume akan sharing folder sedangkan db tdk sharing folder)<br>
Sedangkan jika aplikasi kita Stateful, kemungkinan besar, kita  ingin memiliki data yang independen tiap Pod, walaupun jenis pod nya sama<br>
slide 246 kita harus membuat manual 3 deployment (ini tdk bisa)
## Stateless  vs Stateful
Jika diibaratkan, Stateless adalah hewan ternak, sedangkan Stateful adalah hewan peliharaan<br>
* Dalam hewan ternak, kita tidak peduli siapa yang mati, disembelih ataupun hilang, yang penting bisa diganti dengan hewan yang baru
* Namun berbeda dengan hewan peliharaan, jika ada satu yang sakit, maka kita akan merawatnya sampai sehat, dan jika mati, maka kita akan mencari hewan yang sama karakteristiknya
# StatefulSet
StatefulSet adalah object di Kubernetes untuk memanage aplikasi jenis stateful<br>
StatefulSet akan memastikan bahwa nama pod yang konsisten (sblmnya (stateless) pod ex nama pod itu random), identitas network yang stabil, dan persistent volume yang stabil untuk tiap pod.<br>
Jika ada Pod yang mati, maka StatefulSet akan membuat Pod baru dengan nama dan informasi yang sama dengan Pod yang mati<br>
# Membuat StatefulSet
Membuat StatefulSet sangat mudah, hanya seperti membuat ReplicaSet<br>
Namun, StatefulSet memiliki kemampuan untuk menambahkan Volume Claim Template (stateful perlu claim-nya per pod, tdk global)<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/statefulset.yaml<br>



