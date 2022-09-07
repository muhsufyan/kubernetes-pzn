# Eksternal Service
## Apa itu External Service?
Biasanya Service digunakan sebagai gateway untuk internal Pod<br>
Tapi Service juga bisa digunakan sebagai gateway untuk aplikasi eksternal yang berada diluar kubernetes cluster (kita buat service eksternal, & app diluar cluster dpt mengakses lewat service eksternal yg dibuat tsb)<br>
kelebihannya gerbang masuk ke pod dr app diluar hanya ada 1 yaitu service eksternal<br>

template ada 2 karena ada yg berupa ip addres, dan domain (dns):<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/service-with-endpoint.yaml<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/service-with-domain.yaml<br>
pd contoh service-example.yaml akan dibuat external service & pod (docker image our app). dimana ketika mengakses pod maka akan redirect/forward ke external-service yaitu example.com<br>

