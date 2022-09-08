# VOLUME
Berkas-berkas di dalam container itu tidak permanen, akan terhapus seiring dihapusnya Pod atau Container<br>
saat membuat container & didlmnya membuat file/folder/berkas akan tersimpan tdk permanen, ex container nya mati, podnya mati, container, podnya terhapus akan terhapus<br>
Volume secara sederhana adalah sebuah direktori yang bisa diakses oleh container-container di Pod<br>
## jenis jenis volume
* emptyDir, direktori sederhana yang kosong
* hostPath, digunakan untuk men-sharing direktori di node ke pod (meskipun pod mati tp data mash ada karena disimpan di node)
* gitRepo, direktori yang dibuat pertama kali dengan meng-clone git repository
* nfs, sharing network file system
* dan lain-lain : https://kubernetes.io/id/docs/concepts/storage/volumes/#jenis-jenis-volume termasuk cloud

<br>
kali ini kita coba emptyDir, ini hanya percobaan jd tdk cocok untuk production<br>
template https://github.com/khannedy/belajar-kubernetes/blob/master/templates/pod-with-volume.yaml<br>

### ingat membuat volume harus ada didlm pod/template pod(if replica set)

