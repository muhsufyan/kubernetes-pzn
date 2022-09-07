sblmnya (part4) untuk mengekspos service bisa melalui Node Port, load balancer / inggres<br>
# Node Port
node" dlm kubernetes akan membuka port (dpt kita tentukan/otomatis), saat client mengakses ip (node) dg port (pod) ex 8080 sehingga otomatis akan tahu bahwa itu milik pod 1 maka otomatis akan langsung mengakses pod 1 (tahu dari port pod yg dipakai untuk mengakses) kemudian service akan melanjutkan (menembak) ke pod yg dituju (ex pod 1)<br>
kelemahan dr node port when punya banyak node (banyak ip juga, karena node diakses lewat ip) akan susah untuk maintaince nya<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/service-with-nodeport.yaml<br>

