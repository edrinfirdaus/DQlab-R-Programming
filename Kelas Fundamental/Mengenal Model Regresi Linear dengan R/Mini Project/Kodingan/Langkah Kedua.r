# Setelah mengimport data diatas, kali ini aku akan menggabungkan kedua data tersebut menjadi satu dataset.


# 2, Menggabungkan dua dataset menggunakan R dan eliminasi kolom
merge(penjualan, kunjungan_dokter, by=c("Bulan","Tahun"))
data_gabungan = merge(penjualan, kunjungan_dokter, by.x=c("Bulan","Tahun"), by.y=c("Bulan","Tahun"),sort = FALSE)
data_gabungan