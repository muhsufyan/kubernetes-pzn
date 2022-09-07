# LABEL SELECTOR PADA REPLICA SET
Pd replica set bagian 1, label selector yg kita gunakan adlh matchLabels artinya selector tersebut cara kerjanya match (sama seperti di ReplicationController)<br>
selain matchLabels ada pilihan lainnya yaitu matchExpression (kita dpt menambahkan beberapa ekspresi)<br>
## ekspresi/operator yg dpt ditambahkan dlm matchExpressions
* In, value label harus ada di value in
* NotIn, value label tidak boleh ada di value in
* Exists, label harus ada
* NotExists, label tidak boleh ada

<br>
kita bisa combine matchLabels & matchExpressions
template-nya https://github.com/khannedy/belajar-kubernetes/blob/master/templates/replica-set-match-expression.yaml<br>