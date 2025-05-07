# Andra meminum segelas air sebelum kemudian bertanya padaku, “Gimana? Gampang kan untuk mengakses elemen yang ada pada vector dengan menggunakan index atau posisi elemen?”


# Aku mengangguk dan menjawab Andra, “Iya, semuanya jadi gampang kalau sudah mengerti caranya. Jadi tambah semangat belajarnya, nih,”


# “Yang dipelajari sekarang bisa sangat berguna buat kedepannya, lho. Coba bayangkan jika data yang dimiliki ratusan dan diminta untuk mengambil data tertentu, tentunya akan sulit dengan menggunakan index atau posisi data. Nah, karena di awal vector sudah diberikan nama, kita bisa mengakses elemen pada vector dengan menggunakan namanya,” ujar Andra yang kemudian menunjukan contoh di bawah ini :

# Setelah aku menyimak contoh yang diberikan, Andra mengajakku untuk mempraktikkannya, “Ayo sekarang kita coba mengakses data yang sama seperti yang sudah dilakukan sebelumnya, tapi kali ini kita gunakan nama vectornya!”, ajak Andra.

 

#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja

#Jam kerja Andra di hari Senin menggunakan nama
jam_kerja["Senin"]

#Jam kerja Andra di hari Senin, Rabu, dan Jumat menggunakan nama
jam_kerja[c("Senin", "Rabu", "Jumat")]

#Selisih jam kerja Andra di hari Senin dengan hari Rabu
jam_kerja["Rabu"] - jam_kerja["Senin"]
