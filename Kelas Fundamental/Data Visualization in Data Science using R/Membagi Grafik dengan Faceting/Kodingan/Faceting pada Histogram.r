# Dengan menggunakan function yang sama kita juga bisa memecah histogram menjadi facet grafik.

 

# Tugas Praktek

# Di dalam code editor terdapat code lengkap perlu dilengkapi bagian […] dengan function facet_wrap seperti contoh pada praktek sebelumnya.

# Jika berjalan lancar maka grafik yang dihasilkan adalah histogram yang sudah terpartisi seperti terlihat berikut.

library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x=KEPADATAN..JIWA.KM2.,  fill=NAMA.KABUPATEN.KOTA))

#Menambahkan layer
plot.dki <- plot.dki + geom_histogram(binwidth=10000)
plot.dki <- plot.dki + labs(x="Kepadatan Jiwa (km2)", y="Jumlah Kelurahan", color="Kabupaten/Kota")
plot.dki + facet_wrap( ~ NAMA.KABUPATEN.KOTA, ncol=2)