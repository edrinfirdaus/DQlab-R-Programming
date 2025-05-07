# Jika membaca file teks berformat csv dan tsv hampir sama, maka untuk membaca file versi Excel dari dataset kependudukan tersebut kita perlu gunakan function read.xlsx dari library lain yang bernama openxlsx.

# Function ini akan membaca isi dari file Excel menjadi data.frame di R.

# Untuk praktek kita kali ini, file Excel yang akan kita baca berlokasi di url berikut:

# https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx

# Berikut adalah contoh konstruksi function read.xlsx untuk membaca file Excel tersebut.

# penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")

# Tugas Praktek

# Gantilah bagian […1…] pada code editor untuk  membaca file Excel seperti yang ditunjukkan pada contoh di Lesson, dan masukkan hasilnya pada variable penduduk.dki.xlsx. Pada baris terakhir code editor juga sudah ditambahkan function str sehingga kita bisa menganalisa struktur dan isi dari hasil pembacaan read.xlsx.

# Jika berjalan lancar maka hasil outputnya akan terlihat sebagai berikut.


library(openxlsx)
#Membaca dataset dengan read.xlsx dan dimasukkan ke variable penduduk.dki
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
str(penduduk.dki.xlsx)