# show all resources
kubectl get all

# namespace
kubectl get --namespace {nama namespace}

# resource itu dpt bermacam macam sprti pod, cronjobs, jobs, dll
kubectl get {jenis resources} {nama resourcesnya}
# default namespace
kubectl get pods
kubectl get jobs

# delete all resources
kubectl delete all --all
# delete di namespace tertentu
kubectl delete all --all  --namespace {nama namespace}