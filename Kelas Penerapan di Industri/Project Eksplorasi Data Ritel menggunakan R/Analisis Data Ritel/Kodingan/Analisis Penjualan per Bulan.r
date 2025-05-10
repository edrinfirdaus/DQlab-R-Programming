# Setelah memahami betul isi dari data yang dimiliki, seperti variabel-variabel yang terdapat di dalam data serta tipe dari masing-masing variabel,  selanjutnya aku ingin memperoleh informasi lebih jauh yang tidak dapat dilihat secara langsung di dalam data. Aku kembali melirik email yang Kroma kirimkan dan melihat bahwa dalam program mitra reward ini, Kroma memerlukan beberapa data untuk dianalisis lebih lanjut.

 

# Data pertama yang harus aku sediakan adalah data mengenai penjualan dalam bulan April hingga Juli karena Kroma ingin mengetahui seperti apakah tingkat penjulan tiap bulannya. Untuk itu aku perlu melakukan langkah-langkah berikut

# melalui penggunaan function aggregate() dapat ditampilkan penjualan dalam 3 bulan ini (April hingga Juli).
# Visualisasikan data tersebut dengan menggunakan chart yang sesuai.
 

# Setelah kode dilengkapi dan dijalankan dengan , selanjutnya kamu akan memperoleh visualisasi melalui bar chart berikut ini

#Lalu ambillah data dengan jenis transaksi adalah Penjualan
data_penjualan = data[data$Jenis.Transaksi=="Penjualan",]

#Lakukan fungsi aggregasi data untuk mendapatkan penjualan perbulan
penjualan_perbulan = aggregate(x=data_penjualan$Jumlah, 
                     by = list(Bulan_Tahun = data_penjualan$Bulan_Tahun),
                     FUN = sum)

#Keluarkan bar plot dari penjualan perbulan
barplot(penjualan_perbulan$x,
        names.arg =penjualan_perbulan$Bulan_Tahun,
        xlab="Month",
        ylab="Penjualan",
        col="blue",
        main="Penjualan perbulan",
        border="red")