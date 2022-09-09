# list rollout command
kubectl rollout history {object} {name deployment nya} # Melihat history rollout
kubectl rollout pause {object} {name deployment nya} # Menandai sebagai pause
kubectl rollout resume {object} {name deployment nya} # Resume pause
kubectl rollout restart {object} {name deployment nya} # Merestart rollout
kubectl rollout status {object} {name deployment nya} # Melihat status rollout
kubectl rollout undo {object} {name deployment nya} # Undo ke rollout sebelumnya (rollback)

# rollback deployment
kubectl rollout undo deployment {nama deployment}

# LATIHAN
kubectl apply -f deployment.yaml
kubectl apply -f deployment-update.yaml
kubectl rollout history deployment nodejs-web
kubectl rollout status deployment nodejs-web
kubectl apply -f deployment-update-again.yaml
kubectl rollout status deployment nodejs-web
kubectl rollout history deployment nodejs-web
# akan ada 3 versi rollout
# back ke versi 2
kubectl rollout undo deployment nodejs-web
kubectl rollout history deployment nodejs-web
# akan ada 4 versi, & akan balik lagi ke versi 2
kubectl get all
kubectl rollout history deployment nodejs-web
# akan balik lagi ke versi 1
kubectl delete -f deployment.yaml
kubectl get all