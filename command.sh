# submit config file ke kubernetes master
kubectl create -f nginx-with-annotation.yaml

# see all pod
kubectl get pod

# show all label
kubectl get pods --show-labels

# show spesific pod with annotation
kubectl describe pod nginx-with-annotation

# add annotation in spesific pod 
kubectl annotate pod namapod key=value
# ex
kubectl annotate pod nginx-with-annotation description="hanya boleh digunakan untuk development"

# change annotation in spesific pod
kubectl annotate pod namapod key=value --overwrite
# ex
kubectl annotate pod nginx-with-annotation description="hanya tim finance yang dapat mengakses" --overwrite

# show detail spesific pod
kubectl describe pod nginx-with-annotaion