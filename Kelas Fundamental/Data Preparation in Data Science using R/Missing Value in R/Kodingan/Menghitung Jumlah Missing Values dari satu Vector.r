# Setelah mengenal semua representasi missing value – dalam hal ini NA dan NaN – dan fungsi untuk mengidentifikasinya, kita dapat melakukan banyak hal.

# Salah satunya adalah mengetahui jumlah missing value yang terdapat pada data kita. Akan banyak contoh pada bagian-bagian berikutnya, tapi untuk memulai kita gunakan contoh vector.

# Untuk melakukan perhitungan banyaknya nilai missing value di vector, kita gunakan gabungan function sum dan is.na sebagai berikut:

# sum(is.na( variable_vector ) == TRUE)

# Penjelasan konstruksi tersebut adalah sebagai berikut.

# Komponen

# Keterangan

# sum(…)

# Function untuk menjumlahkan banyaknya elemen

# is.na(…) == TRUE

# Konstruksi untuk mengidentifikasi elemen mana yang merupakan missing value

# variable_vector

# Adalah variable yang isinya adalah vector dengan deklarasi c(…)

 

# Tugas Praktek

# Pada code editor berikut terdapat satu variable bernama isi.vector. Hitunglah jumlah elemen bernilai missing value dengan perintah yang akan menggantikan bagian […]


#Masukkan code di bawah ini sesuai permintaan soal
isi.vector <- c(1,2,NA,4,5,NaN,6)
sum(is.na( isi.vector ) == TRUE)