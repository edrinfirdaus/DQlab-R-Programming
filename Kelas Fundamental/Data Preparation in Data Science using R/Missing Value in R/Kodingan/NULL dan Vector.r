# Untuk memahami NULL, dan perbedaan dengan NA kita langsung mempraktekkannya dengan mengisi suatu vector dengan NULL.

# Berikut adalah contoh variabel vector yang mengandung 7 elemen termasuk NA dan NULL.

# isi.vector <- c(1, 2, 3, NA, 5, NULL, 7)
# Jika kita menampilkan isinya, maka akan terlihat hasil sebagai berikut.

# > isi.vector
# [1]  1  2  3 NA  5  7
# Terlihat dari tampilan, tidak ada NULL disana. Mari kita pastikan lagi dengan menghitung jumlah isi dari vector dengan function length.

# > length(isi.vector)
# [1]  6
# Hasilnya adalah 6, padahal kita memasukkan 7 elemen. Dengan demikian terlihat bahwa NULL memang mewakili undefined object dan tidak dianggap oleh vector. Dengan demikian tidak menjadi bagian dari vector.

 

# Tugas Praktek

# Buat variable bernama isi.vector dengan isi c(1, 2, 3, NA, 5, NULL, 7) untuk menggantikan bagian […1…] dari code editor.

# Kemudian hitung panjang dari isi.vector dengan function length, untuk menggantikan bagian […2…] dari code editor.


#Membuat vector dengan 7 elemen termasuk NA dan NULL
isi.vector <- c(1, 2, 3, NA, 5, NULL, 7)

#Menghitung jumlah elemen dari isi.vector
length(isi.vector)