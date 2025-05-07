# Setelah mendapatkan informasi tentang delayed effect selama 4 bulan antara kunjungan ke dokter dengan penjualan permen, aku bersiap-siap melakukan analisis dengan model regresi. Sebelum melakukan analisis, aku terlebih dahulu harus menghapus data yang memiliki nilai NA yaitu pada bulan Januari, Februari, Maret, dan April tahun 1996. Dengan menggunakan perintah na.omit(x), aku dapat menghilangkan data yang memiliki nilai NA, di mana x merupakan dataset yang digunakan.

# Berikut ini adalah perintah yang kugunakan untuk mendapatkan data yang diolah dalam model regresi.



 

# Selanjutnya akupun menjalankannya dengan menekan , dan kemudian outputnya dapat diperoleh melalui Console yang ditunjukkan berikut ini





#Analisis Regresi menggunakan R
data_regresi = data.frame(
	month = data_delayed_effect$month,
    tahun = data_delayed_effect$year,
    kunjungan_dokter = data_delayed_effect$kunjungan_dokter, 
    penjualan_permen = data_delayed_effect$penjualan_permen_4)
#Mengeliminasi data NA
data_regresi = na.omit(data_regresi)
data_regresi