# Dengan menggunakan model regresi pada bagian sebelumnya, kini aku dapat melakukan prediksi kunjungan dokter dengan variabel input berupa penjualan permen. Semisal aku memiliki data penjualan permen pada bulan Januari, Februari, Maret, April, dan Mei 1998 sebagai berikut:



# Aku menggunakan perintah ini untuk memprediksi kunjungan dokter:



 

# Apabila aku jalankan dengan , maka akan tampil informasi sesuai dengan tabel di bawah ini:



# Dengan menggunakan metode predict diatas, ini adalah hasil prediksi kunjungan dokter pada bulan Jan-Mei 1998.



# Wah, ternyata cukup mudah ya! Aku dapat melakukan analisis model regresi menggunakan R.


#Menggunakan metode predict untuk memprediksi kunjungan dokter
data_prediksi = data.frame(
     month = c(1,2,3,4,5),
     year = c(1998,1998,1998,1998,1998),
     penjualan_permen = c(345646,454344,346987,209854,254634)
     )
predict(model, data_prediksi)