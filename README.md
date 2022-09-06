# namespace
ex case : team product punya namespace product, team develop punya namespace development<br>
ex case : environment untuk production, development pada nginx itu berbeda tp tdk mungkin buat satu" tp ckp gunakan 1 nginx dg beda env saja. dg kata lain deploy pod yg sama (nginx) tp env-nya berbeda maka gunakan <b>namespace</b><br>
## when use namespace ?
1. saat resources kubernetes sdh besar
2. Ketika butuh memisahkan resources untuk multi-tenant, team atau environment
3. Nama resources bisa sama jika berapa di namespace yang berbeda (nama pod yg digunakanboleh sama tp namespace-nya harus berbeda, ex env untuk product, develop tp 1 pod yg sama yaitu nginx)

<br>
if tdk diset namespace-nya maka pod/resources apapun akan dimasukkan kedlm namespace "default"<br>
ex kita buat 2 nginx dg nama yg sama di namespace yg sama (ex default) maka akan error (tdk bisa dibuat) 

### scope namespace adlh cluster
## NOTE lainnya
namespace bukan cara untuk mengisolasi resources, karena jika memakai namespace maka resource lain dpt mengakses/berkomunikasi dg resource lainnya (resource tdk terisolasi)<br>
jd jika ingin terisolasi ex dipisahkan setiap divisi/departement maka gunakan cluster yg berbeda bukan memakai namespace<br>