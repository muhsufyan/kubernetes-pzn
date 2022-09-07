# submit/push  config file ke kubernetes master melalui api kubernetes
kubectl create -f nginx-repcontro.yaml

# resource-nya adlh replicationcontrollers atau replicationcontroller atau rc sama saja
# melihat semua replication controller. dpt dilakukan dg 3 penulisan
kubectl get replicationcontrollers
kubectl get replicationcontroller
kubectl get rc

kubectl get pods

# test apa benar replication controller akan menjaga agar jumlah pod yg ingin dibuat sama meskipun ada yg mati
kubectl get pods
# pilih salah satu pod yg akan dihapus, copas NAME -nya lalu hapus dg perintah brkt, ex pod yg dihapus nginx-rc-2
kubectl delete pod nginx-rc-2
# lihat pod-nya apakah pod dg name tsb terhapus dan diganti dg pod yg baru ?
kubectl get pods
# boom jumlah podnya tetap sama meskipun telah dihapus, diganti dg pod yg baru

# HAPUS REPLICATION CONTROLLER
# resourcesnya adlah rc, replication controller, cascade=false (pod didlm rc yg dihapus tdk akan ikut terhapus) sedangkan cascade=true (pod" didlm rc yg dihapus akan ikut terhapus)
# if cascade tdk diset maka defaultnya true
kubectl delete rc {nama rc}
kubectl delete rc {nama rc} --cascade=false
# show all rc
kubectl get rc
# delete rc following all pod
kubectl delete rc nginx-rc
kubectl get pod
# buat lagi
kubectl create -f nginx-repcontro.yaml
kubectl get pod
# delete just rc 
kubectl delete rc nginx-rc --cascade=false
# cek
kubectl get rc
kubectl get pods
# delete pod manually
kubectl delete pod --all
