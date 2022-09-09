# Computational Resources
Sebelumnya kita belum membahas tentang computational resources<br>
Jadi saat membuat Pod, secara default kita akan menggunakan resource yang dimiliki oleh Node dimana Pod berada (ex node punya memory 10 GB, CPU 4 core if we buat pod maka semuanya dipake & if podnya banyak maka pod" tsb akan rebutan resource di node tsb)<br>
Kadang kita ada kebutuhan membatasi jumlah resource yang digunakan oleh Pod<br>
Hal ini dilakukan agar tidak terjadi perebutan resource antar Pod<br>
Jangan sampai jika ada Pod yang sibuk, membuat semua Pod di Node yang sama menjadi lambat karena resource nya terpakai penuh oleh Pod yang sibuk (kasus diatas katakanlah ada 2 pod, 1 pod sangat sibuk maka resource akan dipakai semuanya oleh pod 1 sedangkan pod 2 tdk dpt resource)<br>
## Request dan Limit
Request dan Limit adalah mekanisme Kubernetes untuk mengontrol mekanisme penggunaan Memory dan CPU<br>
Request adalah apa yang container digaransi didapatkan. Jika sebuah container me-request resource, maka Kubernetes hanya akan menjalankan di Node yang memiliki resource tersebut.(ex podnya punya RAM 5 GB tp container bth (melakukan request dg) RAM 10 GB maka kubernetes tdk akan menjlnkan container tsb)<br>
Sedangkan Limit adalah untuk memastikan bahwa container tidak akan pernah melewati resource tersebut. Container hanya boleh menggunakan resource sampai Limit, tidak boleh lebih. (if lbh akan di kill oleh kubernetes) <br>

https://github.com/khannedy/belajar-kubernetes/blob/master/templates/pod-with-resource.yaml<br>

