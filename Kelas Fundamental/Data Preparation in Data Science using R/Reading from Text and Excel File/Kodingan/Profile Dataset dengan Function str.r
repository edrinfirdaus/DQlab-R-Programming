# Adalah praktek yang sangat baik untuk mengenal atau melakukan profile tiap dataset yang sudah dibaca ke dalam R – dan secara sederhana di R dapat kita lakukan dengan perintah str.

# Str akan menyajikan informasi tiap kolom dataset dalam format yang compact – satu baris informasi saja per row. Pendekatan singkat dan jelas ini membuat str menjadi function favorit dan efektif untuk mengenal data di tahap awal.

# Syntaxnya juga cukup sederhana, cukup masukkan dataset ke dalam function ini seperti pada contoh berikut.

# str(penduduk.dki)
# Tugas Praktek

# Gantilah bagian […1…] pada code editor dengan perintah str yang menggunakan input variable penduduk.dki.

# Jika berjalan dengan lancar, maka outputnya sebagian akan terlihat sebagai berikut.

# > str(penduduk.dki)
# 'data.frame': 267 obs. of 37 variables:
# $ TAHUN : int 2013 2013 2013 2013 2013 2013 2013 2013 2013 2013 ...
# $ NAMA.PROVINSI : Factor w/ 1 level "PROVINSI DKI JAKARTA": 1 1 1 1 1 1 1 1 1 1 ...
# $ NAMA.KABUPATEN.KOTA : Factor w/ 6 levels "JAKARTA BARAT",..: 6 6 6 6 6 6 2 2 2 2 ...
# $ NAMA.KECAMATAN : Factor w/ 44 levels "CAKUNG","CEMPAKA PUTIH",..: 22 22 22 21 21 21 9 9 9 9 ...
# $ NAMA.KELURAHAN : Factor w/ 267 levels "ANCOL","ANGKE",..: 165 164 163 168 167 166 55 24 195 194 ...
# $ LUAS.WILAYAH..KM2. : num 0.91 3.76 3.59 0.59 1.57 1.39 2.58 1.26 1.12 1.14 ...
# $ KEPADATAN..JIWA.KM2.: int 6779 1705 628 3625 3084 1968 1350 14584 18987 14465 ...
# $ X : logi NA NA NA NA NA NA ...
# $ X.1 : logi NA NA NA NA NA NA ...
# $ X.2 : logi NA NA NA NA NA NA ...
# …
# Berikut adalah penjelasan dari beberapa hasil tersebut:

# 'data.frame': merupakan tipe data dari variable penduduk.dki.
# 267 obs: menunjukkan adanya 267 total baris data (row) dari dataset ini.
# 37 variables: menunjukkan adanya 37 kolom data pada dataset ini.
# Untuk baris di bawahnya adalah penjelasan dari tiap kolom/variable data yang terdiri dari:

# Nama kolom
# Tipe data kolom
# Isi dari kolom tersebut
# Jika Factor maka ada tambahan indexnya
# Berikut penjelasan hasil dalam bentuk ilustrasi dari 3 kolom, yaitu TAHUN, NAMA.KELURAHAN, dan X.



#Membaca dataset dengan read.csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
str(penduduk.dki)
