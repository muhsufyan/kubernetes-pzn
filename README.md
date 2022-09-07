# SERVICE
Service adalah resource di Kubernetes yang digunakan untuk membuat satu gerbang untuk mengakses satu atau lebih Pod (sblmnya untuk mengakses pod tahap testing saja memakai port-forward, sedangkan untuk production memakai service)<br>
tanpa membuat service, our app tdk akan dpt diakses (production)<br>
Service memiliki IP address dan Port yang tidak pernah berubah selama service itu ada (karena pod dpt berjln/nyala di port & ip yg berubah ubah)<br>
Client bisa mengakses service tersebut, dan secara otomatis akan meneruskan ke Pod yang ada dibelakang service tersebut<br>
Dengan begini Client tidak perlu tahu lokasi tiap Pod, dan Pod bisa bertambah, berkurang, atau berpindah, tanpa harus mengganggu Client<br>
service adlh gerbang untuk mengakses pod (production, karena tdk mungkin mengakses ke pod scra manual satu satu karena pod dpt pindah node, bertambah atau berkurang)<br>

# MEMBUAT SERVICE
we tlh tau fungsi dr service, now create the service<br>

## Bagaimana Menentukan Pod untuk Service (Bagaimana service tahu pod mana yg dituju) ?
Service akan mendistribusikan trafik ke Pod yang ada di belakangnya secara seimbang (balance, ex if exist 2 pod & ada 100 request maka 50 request menuju ke pod 1 & 50 lainnya ke pod 2)<br>
Service akan menggunakan label selector untuk mengetahui Pod mana yang ada dibelakang service tersebut (saat buat pod wajib memakai label, nanti service akan dimencari label tsb)<br>
template https://github.com/khannedy/belajar-kubernetes/blob/master/templates/service.yaml<br>
image https://github.com/khannedy/belajar-kubernetes/tree/master/images/nginx-curl<br>

