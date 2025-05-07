# Panjang factor dapat dihitung dengan menggunakan function length dengan syntax sederhana berikut.

# length(variable)
# Hanya nilai NULL yang tidak terhitung sebagai bagian dari factor.

# Tugas Praktek

# Pada code editor, terdapat satu variable factor.lokasi. Hitunglah panjang dari variable ini dengan menggunakan perintah length. Ketikkan perintah ini untuk menggantikan bagian […].

# Jika semua berjalan dengan lancar, maka akan muncul hasil sebagai berikut.

# [1] 7
# Jadi panjang dari variable factor.lokasi adalah 7.


#Buatlah variable factor.lokasi dengan isi berupa vector c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung") 
factor.lokasi <- factor(c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung"))
#Tampilkan panjang dari variable factor.lokasi
length(factor.lokasi) 