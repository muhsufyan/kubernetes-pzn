# submit config file to kubernetes master
kubectl create -f finance-namespace.yaml

# buat pod didlm namespace yg telah dibuat sblmnya
kubectl create -f configfilename.yaml --namespace {nama namespace}
# ex
kubectl create -f finance-namespace.yaml --namespace finance

# show all pod inside finance namespace
kubectl get pod --namespace finance

# menghapus namespace, semua resource didlm namespace yg dihapus akan terhapus.
kubectl delete namespace {nama namespace yg dihapus}

# ex
kubectl delete namespace finance