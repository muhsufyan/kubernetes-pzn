# membuat pod (submit/push ke kubernetes master melalui api kubernetes)
kubectl create -f {fnamailepod.yaml}
kubectl create -f nginx-with-probe.yaml

kubectl get pods
# if our app error will know dr RESTARTS (berapa kali melakukan restart)


# melihat detail kenapa bisa restart
# lihat detail probe
kubectl describe pod {nama pod}
# ex
kubectl describe pod nginx-with-probe

# lihat pod dg probe yg error
kubectl create -f nginx-with-probe-error.yaml
kubectl describe pod nginx-with-probe-error
kubectl get pod
# tes
kubectl port-forward nginx-with-probe-error 8080:80 
# lalu dibrowser kunjungi localhost:8080/404
kubectl get pod
# semakin lama restartnya semakin banyak
kubectl describe pod nginx-with-probe-error