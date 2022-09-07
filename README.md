# NODE SELECTOR
sederhananya adlh memilih/menseleksi node mana<br>
defaultnya ketika membuat pod, rc, rs, daemon set, dll node-nya tdk dpt kita pilih (dipilih oleh kubernetes)<br>
tp ada kasus kita perlu node dg spesifikasi tertentu yg hrs kita pilih node-nya, ini akan dibahas dibwh<br>
## why need node selector ?
Kadang kita membuat Node dengan spesifikasi berbeda dari Node biasanya (sdh disinggung diatas)<br>
Misal Node yang memiliki GPU, atau dengan hardisk SSD (tdk mungkin membuat cluster terbeda karena ribet, ex 1 cluster have GPU & another no have GPU)<br>
Solusinya Dengan Node Selector, sehingga kita bisa meminta Kubernetes untuk menjalankan Pod pada Node tertentu (sesuai dg label yg kita tentukan). ex buat node dg label "GPU", "noGPU" & nantinya kita tinggal tentukan mau ditempatkan di node yg ada label GPU atau noGPU<br>

## template untuk node selector
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/pod-node-selector.yaml<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/job-node-selector.yaml<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/daemon-set-node-selector.yaml<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/cronjob-node-selector.yaml<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/replica-set-node-selector.yaml<br>

intinya pada bagian<br>
spec:<br>
tambahkan saja<br> 
nodeSelector:<br>
diikuti key:value<br>
if tdk ada nodeSelector maka tdk akan jln<br>
## ingat sblm menggunakan node selector pastikan dulu kita telah menambahkan label ke node-nya 
