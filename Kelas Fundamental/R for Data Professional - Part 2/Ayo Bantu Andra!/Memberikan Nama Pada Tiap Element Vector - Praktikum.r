# Usai membuat vector berisi nama hari dan jam kerja, Andra kembali menjelaskan kepadaku bahwa sebagai seorang Data Scientist harus mempunyai pemahaman yang jelas akan data yang sedang digunakan. Memahami arti dari setiap element pada vector merupakan suatu hal yang penting.


# Pernyataan Andra tadi memancing sepotong pertanyaan dari benakku, “Ndra, sebelumnya kita sudah membuat vector bernama jam kerja yang berisi jam kerja kamu selama minggu ini, tapi jika vector jam_kerja tersebut diberikan kepada orang lain seperti Kroma, belum tentu mereka akan paham konteks dari isi vector tersebut. Jadi, bagaimana caranya agar orang lain bisa paham?”


# “Caranya bisa dengan memberikan nama pada vector untuk membantu memberikan konteks mengenai isi vector. Penamaan ini juga termasuk langkah yang penting. Cara memberikan nama pada vector bisa dengan menggunakan function names(). Lihat ya,” jawab Andra singkat.


# Aku melihat Andra mengetikkan sesuatu di komputernya.

# Aku terkesima melihat hasil data di komputer Andra.


# “Wah keren! Setiap nama karyawan jadi berpasangan dengan jabatannya masing-masing ya,” kataku dengan takjub.


# Aku sangat bersemangat hingga langsung mengajak Andra untuk lanjut, “Lanjut yuk dengan memberikan nama pada vector jam_kerja yang sudah kita buat tadi sesuai dengan nama_hari nya!”


# Andra mengangguk dan mempersilahkan aku untuk melanjutkan. Tanpa basa-basi lagi, aku mencobanya.


#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja
