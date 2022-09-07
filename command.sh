# submit/push  config file ke kubernetes master melalui api kubernetes
kubectl create -f namafileconfigJob.yaml

# show all job
kubectl get jobs

# delete spesifik job
kubectl delete job {nama jobs}

kubectl create -f job-nodejs.yaml
kubectl get all
# if READY = 0 artinya pod mati, 1 pod nyala

# detail job tertentu
kubectl describe job {nama job}

kubectl describe job nodejs-job

# hapus job tertentu
kubectl delete job {nama job}

kubectl delete job nodejs-job

kubectl get job