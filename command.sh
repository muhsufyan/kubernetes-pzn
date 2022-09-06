# buat pod yg telah ada label-nya (sama sprti sblmnya yaitu membuat pod baru). 
# selain itu perintah ini dignakan untuk membuat pod, service, replication controller, dll 
kubectl create -f nginx-with-label.yaml

# see all pod & all label
kubectl get pods --show-labels

# CARA DIBAWAH INI TDK DIREKOMENDASIKAN, karena di config file tdk akan ada add/change label tsb
# add label (formatnya)
kubectl.exe label pod namapod key_label=value_label
# ex
kubectl.exe label pod nginx-with-label environment=development
# see label
kubectl get pod --show-labels
# change label (formatnya)
kubectl.exe label pod nginx key_label = value_label_change --overwrite
# ex
kubectl.exe label pod nginx-with-label environment=testing --overwrite




# salah satu fungsi dr label untuk mencari/query
#see all pod dg 1 label (key)
kubectl get pods -l key_yg_dicari
kubectl get pods -l key_yg_dicari = value_yg_dicari
kubectl get pods -l '!key' #see all pods yg tdk punya label key
kubectl get pods -l key!=value
kubectl get pods -l 'key in (value1, value2)'
kubectl get pods -l 'key notin (value1,value2)'
query (mencari) pod dg beberapa label(key)
kubectl get pods key,key2=value
kubectl get pods key=value1,key2=value
# ex
kubectl get pods -l environment #cari pod dimana label dg key nya environment
kubectl get pods -l team
kubectl get pods -l environment=production #cari pod dimana label dg key environment dan valuenya production
kubectl get pods -l !team #cari pod dimana tidk punya label team
kubectl get pods -l 'environment in (production, testing)' # cari pod dimana label keynya environment & valuenya production, testing
kubectl get pods -l environment, team # cari pod dimana labelnya environment atau team
kubectl get pods -l environment, team=finance


