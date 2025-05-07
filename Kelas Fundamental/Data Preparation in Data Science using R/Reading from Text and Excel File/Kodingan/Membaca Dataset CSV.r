# Untuk membaca file versi csv dari dataset kependudukan tersebut kita bisa gunakan function read.csv – function ini akan membaca isi dari file teks tersebut menjadi data.frame di R.

# File csv yang akan kita baca berlokasi di url berikut:

# https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv

# Untuk membaca file tersebut kita gunakan function read.csv dengan perintah lengkap sebagai berikut.

# penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")

# Komponen

# Deskripsi

# penduduk.dki

# nama variable yang digunakan untuk menampung data dari contoh dataset

# read.csv

# function yang digunakan untuk membaca contoh dataset yang berupa file

# https://storage.googleapis.com/dqlab-dataset/customer_segments.txt

# lokasi dataset yang terdapat di web DQLab. Jika lokasi file dan aplikasi R terdapat di komputer lokal Anda, maka gantilah dengan lokasi file di lokal. Misalkan c:\data\customer_segments.txt

 

# sep=","

# Parameter pemisah (separator) antar kolom data. Kita gunakan tanda koma untuk dataset penduduk DKI Jakarta.

 

# Jika terjadi error berikut, cobalah periksa kembali penulisan code – huruf besar, huruf kecil dan juga penulisan lokasi file – dengan teliti.

# Error in file(file, "rt") : cannot open the connection

# Jika tidak terjadi error maka langkah selanjutnya adalah menampilkan isi data dengan mengetikkan nama variable pelanggan pada code editor sebagai berikut.

# penduduk.dki

# Hasil eksekusi perintah ini sebagian akan tampak sebagai berikut.



# Terlihat isi data dari tujuh kolom pertama dan terdapat nomor baris pada tiap data yang ditampilkan.

# Tugas Praktek

# Lengkapi bagian […1…] pada code editor untuk  membaca file seperti yang ditunjukkan pada bagian Lesson.


#Membaca dataset dengan read.csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
penduduk.dki