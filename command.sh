# buat statefulSet
kubectl create -f fileConfigStatefulSet.yaml
# atau 
kubectl apply -f fileConfigStatefulSet.yaml
# show statefulSet
kubectl get statefulsets
# detail statefulSet
kubectl describe statefulset {nama statefulSet}
# delete statefulSet
kubectl delete statefulset {nama statefulSet}

# LATIHAN
kubectl apply -f statefulset.yaml
kubectl get all
# run nya akan 1 per satu (tdk semuanya langsung sprti deployment), total podnya 3
kubectl get all
kubectl get all
kubectl get pvc
# akan ada 3 pvc
# KITA COBA DELETE 1 POD (index mulai dr 0, kita hapus pod ke 2)
kubectl delete pod nodejs-stateful-1
kubectl get all
# akan dibuatkan 1 pod baru dg info yg sama persis dg pod yg dihapus
kubectl get pvc
# pvc nya pun sama
# hapus statefulset