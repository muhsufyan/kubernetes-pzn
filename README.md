# Multi Container Pod
Saat menggunakan Docker, kita selalu diajarkan bahwa 1 aplikasi adalah 1 container<br>
Di Kubernetes agak sedikit berbeda, saat kita deploy aplikasi kita, maka dia akan disimpan dalam 1 pod. Kenapa pod? tidak container, karena sebenarnya di dalam pod, kita bisa menambahkan banyak container (1 pod bisa multi container)<br>
Ini cocok sekali jika memang kita butuh aplikasi yang berjalan dibeberapa container, dan jika ingin scale, harus semua nya ikut scale. ex our app php yg tdk bisa run sendiri perlu nginx/apache http so kita  bisa run dlm 2 container (1 untuk php, 2 nginx/apache) yg kita bungkus dlm 1 pod<br>
saat kita ingin duplikat our app tinggal buat saja pod ke 2<br>
INGAT saat run multiple container maka ip dan port-nya nya akan sharing dlm 1 pod tersebut (tdk bisa our app php portnya 80 & nginx juga 80 itu akan bentrok. INGAT INI DIDLM POD KUBERNETES BUKAN CONTAINER DOCKER)<br>
contoh https://github.com/khannedy/belajar-kubernetes/blob/master/examples/multi-container-pod.yaml<br>
