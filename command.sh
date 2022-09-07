# submit/push  config file ke kubernetes master melalui api kubernetes
kubectl create -f namafileconfigCronJob.yaml

# show all cron job
kubectl get cronjobs

kubectl create -f cronjob-nodejs.yaml
kubectl get all

# show log
kubectl get all # copas NAME nya
kubectl logs {NAME}
kubectl logs nodejs-cronjob-xxx


# detail cron job tertentu
kubectl describe cronjobs {nama cron job}

kubectl describe cronjobs nodejs-cronjob

# hapus cron job tertentu
kubectl delete cronjobs {nama cron job}

kubectl delete cronjob nodejs-cronjob

kubectl get job