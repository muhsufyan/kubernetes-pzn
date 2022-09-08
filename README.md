# SERVICE LOAD BALANCER
cara load balancer lbh direkomendasikan drpd node port<br>
Cloud Provider seperti Google Cloud atau Amazon Web Service biasanya memiliki Cloud LoadBalancer<br>
Kubernetes bisa menggunakan LoadBalancer bawaan dari Cloud Provider sebagai cara untuk mengekspos Service<br>
LoadBalancer akan melakukan load balance request ke NodePort<br>
Sayangnya Service LoadBalancer ini tidak bisa di test di local seperti menggunakan Minikube<br>
cara kerja dr load balancer sebenarnya = cara kerja node port + load balancer dibagian atasnya.<br>
slide 160: node diakses melalui load balancer, penentuan apakah ke node 1 dulu/node 2 dulu ditentukan oleh algoritma yg dipilih ex Round‑robin maka mengakses node dilakukan satu kali satu kali (bergiliran) ex node 1 dulu baru node 2 balik lg node 1 lagi dilanjut node 2 dst.<br>
## perbedaan node port & load balancer
pd node port, client langsung mengakses node (slide 155) sedangkan load balancer client akan mengakses node hrs melalui load balancer dulu (slide 160)<br>
dg demikian, client yg melalui load balancer tdk perlu ribet menentukan distribusi node yg akan dipilih, load balancer yg akan menentukan scra otomatis.<br>
lbh simple lagi if memakai multiple load balancer (slide 161)<br>
https://github.com/khannedy/belajar-kubernetes/blob/master/templates/service-with-loadbalancer.yaml