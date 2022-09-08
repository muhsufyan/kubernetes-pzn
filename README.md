# SECRET
digunakan untuk data yg sensitif, sprti token pi, api key, password, dll
## data sensitif
Saat kita menggunakan ConfigMap, maka data yang ada dalam ConfigMap dianggap tidak sensitive<br>
Tapi, kadang konfigurasi aplikasi kita, butuh data yang sifatnya sensitive, seperti username password database, API Key, Secret key, dan sejenisnya<br>
Untuk menyimpan jenis data sensitive seperti itu, di Kubernetes kita bisa menggunakan object yang disebut Secret. Secret sama seperti ConfigMap, berisikan data key-value <br>
## about secret
Kubernetes menyimpan Secret secara aman dengan cara hanya mendistribusikan Secret pada Node yang memang hanya membutuhkan Secret tersebut.<br>
Secret selalu disimpan di memory di Node dan tidak pernah disimpan di physical storage.<br>
data secret disimpan di master node sendiri (lebih tepatnya di etcd), & Secret disimpan dengan cara di encrypt, sehingga menjadi lebih aman.<br>
Secara sederhana, gunakan ConfigMap untuk konfigurasi yang tidak sensitif, dan gunakan Secret untuk konfigurasi yang bersifat sensitif.<br>

https://github.com/khannedy/belajar-kubernetes/blob/master/templates/secret.yaml<br>

