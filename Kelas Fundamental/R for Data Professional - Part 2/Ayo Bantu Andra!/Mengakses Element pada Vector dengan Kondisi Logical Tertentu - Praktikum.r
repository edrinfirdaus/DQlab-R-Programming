# Setelah mempelajari vector, kini aku mengerti bahwa ada banyak cara untuk mengakses isi vector.


# “Masih ada yang perlu aku pelajari, Ndra?” tanyaku sambil meregangkan tubuh.


# “Pastinya! Ada satu cara lagi yang belum diajarkan. Tahu tidak kalau isi vector ini dapat diakses dengan menggunakan kondisi logical tertentu? Misalnya kita mempunyai vector berisi angka 1 sampai 10 secara berurutan dan hanya ingin menampilkan angka yang memiliki nilai lebih dari 5,” jelas Andra.


# “Hmm, memangnya itu mungkin dilakukan, Ndra?” Aku sedikit merasa ragu.


# “Sangat mungkin! Supaya lebih mudah dimengerti, lihat contoh ini ya,” kata Andra.


# Aku memperhatikan contoh di bawah ini.

# “Pada contoh di atas, dapat dilihat bahwa kita dapat memasukkan kondisi logical ke dalam kurung siku untuk mengakses isi vector.


# Kasusnya adalah kita ingin menampilkan isi vector yang bernilai lebih dari 5,” papar Andra.


# Walaupun aku sudah mengerti yang dikatakan Andra, aku masih ingin berlatih untuk memastikan pemahamanku.


# “Ndra, bisa gak kalau aku coba latihan soal seperti di atas menggunakan jam kerja milikmu?” pintaku pada Andra.


# “Bisa, dong. Langsung aja kerjakan latihan ini,” kata Andra sambil memberikanku soal untuk dikerjakan.



#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja

#Tampilkan jam_kerja yang lebih kecil dibanding dengan jam kerja normal
jam_kerja[jam_kerja < 8]

#Tampilkan jam_kerja yang lebih besar dibanding dengan jam kerja normal
jam_kerja[jam_kerja > 8]
