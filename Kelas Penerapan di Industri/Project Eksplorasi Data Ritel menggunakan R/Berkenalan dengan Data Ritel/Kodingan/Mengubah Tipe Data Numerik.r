# Info: Predefined Code telah diperbaiki pada tanggal 22 Nopember 2022. Silakan dicek kembali kode yang telah dituliskan.
# Setelah aku selesai mengubah tipe data dari variabel Tanggal, mendadak Senja rekan kerjaku yang sedang duduk di sebelahku menunjuk ke arah layar komputer.

# “Wah Aksara, coba lihat deh, ada variabel yang bernama Harga, tapi tipe data dari variabel tersebut adalah character. Coba kamu cek kembali, apakah benar bahwa variabel tersebut memang menyimpan data character”, ujar Senja.

# Aku yang sempat terkejut gara-gara Senja, melihat kembali dan menyadari bahwa variabel Harga yang menyimpan data angka memiliki tipe data character. Tidak menunggu lebih lama lagi, Aku langsung bergegas untuk mengubah tipe data Harga menjadi numerik.

# "Thank you, Nja, karena mata kamu yang sangat jeli melihat kesalahan ini," kataku pada Senja. 

# "Tapi, lain kali jangan ngagetin ya," tambahku.

# Senja pun tertawa," Maaf ya, Aksara, hehehe."

#Ubah tipe data variabel Harga menjadi numerik
data$Harga <- as.numeric(data$Harga)

#Ubah data NA menjadi 0
data$Harga[is.na(data$Harga)] <- 0

#Cek apakah tipe data dari variabel Harga sudah menjadi tipe numerik
str(data$Harga)

#Tampilkan 5 data teratas
head(data, 5)