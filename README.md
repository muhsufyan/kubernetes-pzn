# SHARING VOLUME
Karena di dalam Pod kita bisa membuat lebih dari satu container, maka Volume di Pod pun bisa kita sharing ke beberapa container yg ada didlm pod yg sama<br>
Hal ini sangat cocok ketika kita butuh sharing direktori antar container, misal container pertama membuat file, container kedua memproses file<br>
pd contoh kasus ini kita gunakan tipe volume nya emptyDir, ingat ini tdk disarankan untuk production

