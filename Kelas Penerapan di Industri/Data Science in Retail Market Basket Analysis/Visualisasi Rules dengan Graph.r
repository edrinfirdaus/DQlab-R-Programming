library(arules)
library(arulesViz)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
plot(subset(mba, lift>1.1), method="graph")


# Sejauh ini Anda telah menghasilkan rules dan mengerti bagaimana metrik kualitas dapat digunakan sebagai basis pemilihan rule.

# Namun ketika item semakin banyak, maka proses memilih berdasarkan angka-angka saja cukup merepotkan. Kadangkala visualisasi bisa sangat membantu analisa di proses ini.

# Jenis visualisasi cukup banyak, namun kita akan gunakan visualisasi bertipe graph yang terdapat pada package arulesViz – suatu package dengan visualisasi khusus untuk association rules.

# Berikut adalah contoh visualisasi yang kita hasilkan dari rules yang telah kita filter dengan lift di atas nilai 1.1.



# Lingkaran disini adalah titik pertemuan (asosiasi) dari item-item yang ada, dimana terdapat tanda panah sebagai garis penghubungnya. Tiap Item disini berupa teks.

# Besarnya bulatan menunjukkan popularitas, dan intensitas warna menunjukkan lift. Terlihat disini Gula ke Sirup, dan Pet Food ke Sirup memiliki lift yang relatif tinggi tapi supportnya tidak terlalu besar.

# Tugas Praktek

# Grafik di atas dihasilkan oleh perintah berikut.

# plot(subset(mba, lift>1.1), method="graph")

# Perhatikan fungsi plot ini merupakan pengembangan dari package arules. Method graph menunjukkan bahwa plot ini harus menghasilkan visualisasi dengan tipe jaringan.

# Ketiklah perintah di atas di code editor dan jalankan.