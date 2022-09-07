# Mengakses Service
## Bagaimana Cara Mengakses Service?
Seandainya aplikasi di Pod butuh mengaskses Pod lain via Service, bagaimana cara mengetahui Ip Address Service tersebut?<br>
Cara manual adalah dengan membuat service terlebih dahulu, lalu memasukkannya ke dalam konfigurasi aplikasinya secara manual (ini yg kita lakukan seblmnya (16-service))<br>
Atau adakah cara yang lebih otomatis? (langsung saja dibahas dibawah)<br>
## Cara Mengakses Service (scra otomatis)
* Menggunakan environment variable (info detail service dimasukkan kedlm env var lalu export ke setiap pod)
* Menggunakan DNS

<br>
1. melalui environment variabel<br>
show env var => kubectl exec nama-pod -- env<br>
2. melalui DNS, dns dibuat otomatis saat membuat service<br>
nama-service.nama-namespace.svc.cluster.local

direkomendasikan memakai DNS, karena ip bisa berubah tp dns akan selalu sama