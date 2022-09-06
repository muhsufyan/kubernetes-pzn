# label
info tambhn like properties, metadata.<br>
memberi tanda pada pod<br>
mrngorganisir pod, isinya bisa versi pod, environment, dll<br>
label can apply not just pod but also all resources in kubernetes such as replication controller, replica set, service, etc<br> 
template pod dg label => https://github.com/khannedy/belajar-kubernetes/blob/master/templates/pod-with-label.yaml<br>
label tdk boleh ada spasi sehingga label digunakan untuk selector (disarankan untuk selector/query/pencarian data saja)<br>

menambh label maka hrs buat pod lagi (config file) => kubectl create -f namafile.yaml<br>
melihat semua pod + label"nya => kubectl get pods --show-labels<br>
### label digunakan untuk proses query/selector/pencarian
#### tidak disarankan add / change label di pod yg telah ada sblmnya(lbh baik buat pod baru) karena di config file tdk akan ada add/change label tsb
meskipun bisa saja add/change suatu pod melalui perintah :<br>
add label => kubectl.exe label pod namapod key_label=value_label<br>
change label => kubectl.exe label pod nginx key_label = value_label_change --overwrite<br>

salah satu fungsi dr label untuk mencari/query<br>
#see all pod dg 1 label (key)<br>
kubectl get pods -l key_yg_dicari<br>
kubectl get pods -l key_yg_dicari = value_yg_dicari<br>
kubectl get pods -l '!key' #see all pods yg tdk punya label key<br>
kubectl get pods -l key!=value<br>
kubectl get pods -l 'key in (value1, value2)'<br>
kubectl get pods -l 'key notin (value1,value2)'<br>
query (mencari) pod dg beberapa label(key)<br>
kubectl get pods key,key2=value<br>
kubectl get pods key=value1,key2=value<br>