# Pie chart adalah jenis grafik yang banyak digunakan secara umum untuk menampilkan rasio. Dan uniknya, di ggplot2 tidak ada fungsi khusus yang menghasilkan pie chart ini.

# Pie chart dihasilkan dengan proses yang cukup unik, dimana koordinat dari geom bar diubah ke polar.

# Untuk lebih jelasnya, kita gunakan contoh langkah demi langkah.

# Jika kita memilik plot data kependudukan di variable p, dan kita ingin membentuk suatu grafik geom bar yang tidak ada pemetaan x-nya, tapi sumbu y diisi dengan JUMLAH, dan pengisian warna menggunakan NAMA.KABUPATEN.KOTA maka perintahnya adalah sebagai berikut.

# plot.dki <- ggplot(data=p, aes(x="", y=JUMLAH, fill = NAMA.KABUPATEN.KOTA))
# plot.dki + geom_bar(width = 1, stat = "identity")
# Perintah ini akan menghasilkan grafik berikut.



# Nah, bayangkan grafik ini kemudian diputar ke dalam koordinat polar sehingga menjadi seperti berikut.



# Perputaran ini membuat bar chart tadi ditransformasikan menjadi pie chart.

# Walaupun terlihat tidak sempurna, untuk saat ini kita tidak akan membahas terlalu jauh lagi mengenai pie chart kecuali Anda melakukan tugas praktek untuk menghasilkan grafik di atas.

 

# Tugas Praktek

# Di dalam code editor terdapat code lengkap dari seluruh komponen di atas. Anda tinggal pelajari detialnya untuk memahami apa saja yang diperlukan, tidak ada yang perlu dirubah atau ditambahkan.


library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/datakependudukandki-dqlab.csv", sep=",")
#Melakukan agregasi
p <- aggregate(x=list(JUMLAH=penduduk.dki$JUMLAH), FUN=sum, by = list(NAMA.KABUPATEN.KOTA=penduduk.dki$NAMA.KABUPATEN.KOTA))
#Plot grafik pie chart
plot.dki <- ggplot(data=p, aes(x="", y=JUMLAH, fill = NAMA.KABUPATEN.KOTA))

plot.dki <- plot.dki + geom_bar(width = 1, stat = "identity")
plot.dki <- plot.dki + coord_polar("y", start=0)
plot.dki