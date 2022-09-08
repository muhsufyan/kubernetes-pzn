lihat perbedaan env var, configmap, & downward api. maka downward api tdk perlu manual (ini membantu karena ip misalnya itu dinamis)
# Downward API
Konfigurasi yang bisa kita set secara manual bisa ditangani dengan baik menggunakan ConfigMap dan Secret, namun bagaimana dengan konfigurasi yang dinamis? Seperti informasi Pod dan Node?<br>
Kubernetes memiliki Downward API. Downward API bisa memungkinkan kita mengambil informasi seputar Pod dan Node melalui environment variable<br>
Jangan bingung dengan kata API, Downward API sendiri bukan RESTful API, ini hanya cara untuk mendapatkan informasi seputar Pod dan Node. ex ingin tahu nama pod, node, dll karena tdk mungkin hardcode<br>
saat run pod nanti donwward api akan inject informasi yg kita perlukan melalui env var. cara mengetahuinya dpt lihat slide 207-209 menggunakan metadata<br>
https://kubernetes.io/docs/concepts/workloads/pods/downward-api/<br>
