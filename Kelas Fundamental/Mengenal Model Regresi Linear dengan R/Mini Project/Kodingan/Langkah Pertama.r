# Setelah sukses melaksanakan program penyuluhan kesehatan gigi di bulan ini, Kroma akan melakukan penyuluhan kesehatan di kota berbeda, namun kali ini aku diminta untuk mancari tahu pengaruh dari penjualan sereal terhadap kunjungan rumah sakit.

# Aku siap untuk melakukan analisis regresi untuk mengetahui pengaruh penjualan sereal terhadap kunjungan rumah sakit!

# Akan ada beberapa tahapan yang perlu aku lakukan untuk bisa mendapatkan analisis regresi, tapi pertama-tama aku harus melakukan proses importing data kunjungan_dokter_gigi_kota_x_dqlab.tsv dan tingkat_penjualan_kota_x_dqlab.tsv.


# 1. Import data penjualan sereal dan kunjungan dokter gigi
penjualan = read.csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
kunjungan_dokter= read.csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
print(penjualan)
print(kunjungan_dokter)