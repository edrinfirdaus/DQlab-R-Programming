# Untuk membuat line chart dari data inflasi, kita lakukan langkah-langkah dari ggplot2:

# Membuat plot, dengan function ggplot()
# Mengisi data dari pembacaan file dengan function read.csv()
# Membuat aesthetic mapping, dengan function aes
# Menambahkan layer, dengan function geom_line()
# Berikut adalah tugas praktek yang coba kita lakukan. Untuk praktek kali ini, sengaja kita buat hasilnya error.

 

# Tugas Praktek

# Tambahkan layer untuk line chart pada bagian […] di code editor yang telah dilengkapi dengan plot, data, dan aesthetic mapping.

# Jika berjalan dengan baik, maka akan muncul tampilan grafik berupa plot kosong.


library(ggplot2)

#Membaca data csv dan dimasukkan ke variable inflasi.indo.sing
inflasi.indo.sing <- read.csv("https://storage.googleapis.com/dqlab-dataset/inflasi.csv", sep=",")

#Menambahkan data dan aesthetic mapping
plot.inflasi <- ggplot(data=inflasi.indo.sing, aes(x = Bulan,  y=Inflasi,  color=Negara))

#Menambahkan layer
plot.inflasi + geom_line()