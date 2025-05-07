# Untuk melakukan analisis regresi, aku menggunakan perintah berikut:



# Perintah yang telah diketikkan memiliki penjelasan seperti yang ditunjukkan berikut ini



 

# Kalau aku dengan benar menggunakan perintah diatas dan menjalankannya dengan , berikut adalah hasil dari model regresi kunjungan ke dokter dengan pembelian permen.



# Tambahan sedikit dari catatan penjelasan koefisien regresi dari model regresi yang kuperoleh dapat dilihat pada nilai Coefficients.


model = lm(kunjungan_dokter ~ penjualan_permen, data = data_regresi)
summary(model)