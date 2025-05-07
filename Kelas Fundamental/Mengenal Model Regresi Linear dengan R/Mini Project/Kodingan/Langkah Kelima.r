# Setelah melakukan data eksplorasi, lakukanlah analisis regresi!

# Lakukan interpretasi dari model regresi dan temukan informasi yang berguna terkait hubungan antara penjualan sereal terhadap kunjungan rumah sakit!

# Karena sudah kudapatkan hasil periode delayed efect yang cukup kuat dan positif 4 bulan, maka untuk data ini pun periode yang kugunakan adalah 4 bulan. 



 

# Persamaan regresi yang digunakan untuk data ini adalah y = 52.962412 + 0.002975 x, dimana terdapat korelasi positif antara penjualan serial dengan kunjungan rumah sakit. Yang berarti bahwa setiap ada peningkatan penjualan sereal maka akan mengakibatkan kenaikan kunjungan rumah sakit dalam 4 bulan mendatang.



# Analisis Regresi menggunakan R
data_regresi = data.frame(
bulan = data_delayed_effect$bulan,
tahun = data_delayed_effect$tahun,
kunjungan_dokter = data_delayed_effect$kunjungan_dokter,
penjualan_sereal = data_delayed_effect$penjualan_sereal_4)

# Mengeliminasi data NA
data_regresi = na.omit(data_regresi)

# Model regresi menggunakan R
model = lm(kunjungan_dokter ~ penjualan_sereal, data = data_regresi)
summary(model)