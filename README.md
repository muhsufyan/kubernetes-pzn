environment variable saja tdk cukup, terdpt mslh/kelamahan
## Masalah dengan Hardcode Konfigurasi
Saat kita meng-hardcode konfigurasi environment variable di file yaml kubernetes, artinya kita harus siap-siap membuat file konfigurasi berbeda-beda tiap jenis environment. Misal jika kita punya environment production, development, dan qa, maka kita harus membuat file untuk tiap environment<br>
Ini menjd masalah jika sampai kita lupa meng-update file konfigurasi, maka salah-salah kita bisa menggunakan konfigurasi environment yang salah. ini berbahaya karena bisa saja config production & development sama karena lupa tdk update<br>
solusinya adlh dg menggunakan configMap
# ConfigMap
Kubernetes memiliki kemampuan memisahkan konfigurasi dalam object bernama ConfigMap<br>
Sederhananya, ConfigMap berisi konfigurasi key-value<br>
Aplikasi tidak perlu membaca konfigurasi langsung ke ConfigMap, melainkan Kubernetes akan mengirim konfigurasi di ConfigMap ke dalam environment variable di container. jd kita ckp buat configMap lalu configMap ini akan diinjek ke env Var kubernetes<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/configmaps.yaml<br>
now masing" environment production, development, dan qa dpt kita buat config map nya masing"

