# Setelah aku berhasil menggabungkan kedua dataset, aku sudah siap untuk melanjutkan analisis yang diminta oleh Kroma.

# Aku baru menyadari bahwa ternyata melakukan eksplorasi terhadap data sebelum melakukan analisis regresi adalah hal yang cukup berguna. 

# Lewat analisis data eksplorasi, aku dapat mengetahui karakteristik dari data yang digunakan, apakah terdapat trend dari variabel, bagaimana nilai rata-rata dari setiap variabel, dan bagaimana variabel bebas berkorelasi dengan variabel tidak bebas.

 

# Menghitung summary dari data

# Mengetahui statistik dasar dari dataset yang dimiliki cukup perlu untuk mendapatkan gambaran bagaimana persebaran data. Berikut ini adalah perintah yang aku gunakan untuk mendapatkan summary dari data yang dimiliki.



# Aku mengikuti coding seperti yang dicontohkan, kemudian aku menjalankan kode dengan menekan  dan memperoleh hasil melalui console. 



# Dengan melihat data diatas, akhirnya aku bisa mengambil kesimpulan bahwa nilai terkecil kunjungan dokter itu bernilai 32 dan nilai maksimum kunjungan dokter bernilai 132 dalam sebulan. Aku pun menyadari bahwa konsumsi masyarakat terhadap permen dan buah pisang cukup tinggi, sementara konsumsi untuk sereal cukup rendah dibanding kedua variabel lainnya.


summary(data_gabungan$tingkat.kunjungan.ke.dokter.gigi)
summary(data_gabungan$penjualan.permen)
summary(data_gabungan$penjualan.sereal)
summary(data_gabungan$penjualan.buah.pisang)