# Kalau kita perhatikan empat kolom data pada table berikut di bawah ini – yang diambil dari dataset kependudukan DKI – maka dua kolom terakhir (berwarna kuning dan hijau) sebenarnya mengandung tiga variable, yaitu: rentang umur, jenis kelamin, dan jumlah penduduk.

# NAMA.KECAMATAN

# NAMA.KELURAHAN

# 35-39.Laki-Laki

# 35-39.Perempuan

# GAMBIR

# GAMBIR

# 166

# 174

# GAMBIR

# CIDENG

# 850

# 748

# GAMBIR

# PETOJO UTARA

# 954

# 920

 

# Dan dari sisi prinsip kerapian data, satu variable data harusnya masing-masing menempati satu kolom tersendiri. Dan berdasarkan prinsip tersebut, kolom "NAMA.KECAMATAN" dan "NAMA.KELURAHAN" yang berwarna biru sudah memenuhi persyaratan. Namun kolom "35-39.Laki-Laki" dan kolom "35-39.Perempuan"  tidak memenuhi persyaratan.  

# Kita akan coba merapikan ini dengan dua tahap:

# Melakukan normalisasi kolom dari baris ke kolom
# Memisahkan kolom
# Kita mulai dari tahap pertama pada praktek kali ini, dimana kita akan merubah struktur data di atas menjadi berikut.

# NAMA.KECAMATAN

# NAMA.KELURAHAN

# DEMOGRAFIK

# JUMLAH

# GAMBIR

# GAMBIR

# 35-39.Laki-Laki

# 166

# GAMBIR

# GAMBIR

# 35-39.Perempuan

# 174

# GAMBIR

# CIDENG

# 35-39.Laki-Laki

# 850

# GAMBIR

# CIDENG

# 35-39.Perempuan

# 748

# GAMBIR

# PETOJO UTARA

# 35-39.Laki-Laki

# 954

# GAMBIR

# PETOJO UTARA

# 35-39.Perempuan

# 920

 

# Terlihat nama kolom "35-39.Laki-Laki" dan "35-39.Perempuan" dipivot menjadi nilai baris data di bawah kolom "DEMOGRAFIK".

# Kemudian angka-angka jumlah penduduk yang tadinya di bawah kedua kolom tersebut sekarang ada di bawah kolom "JUMLAH".

# Untuk melakukan transformasi struktur ini, kita akan gunakan function melt dari package reshape2. Berikut adalah contoh penggunaannya:

# melt(data=penduduk.dki.xlsx, id.vars=c( "NAMA.KECAMATAN", "NAMA.KELURAHAN"), measure.vars = c("35-39.Laki-Laki", "35-39.Perempuan"), variable.name = "DEMOGRAFIK", value.name="JUMLAH")
# Penjelasan dari perintah tersebut adalah sebagai berikut:

# Elemen

# Deskripsi

# melt

# Function untuk melakukan transformasi dari kolom ke baris

# data=penduduk.dki.xlsx

# Argumen data yang diisi dengan variable penduduk.dki.xlsx, yaitu data frame hasil pembacaan dari file Excel data kependudukan DKI

# id.vars= c( "NAMA.KECAMATAN", "NAMA.KELURAHAN")

# Vector dari field-field kolom yang akan menjadi identitas – dimana field tidak akan mengalami transformasi tapi tetap diambil

# measure.vars = c("35-39.Laki-Laki", "35-39.Perempuan")

# Nama variable hasil transformasi

# variable.name= "DEMOGRAFIK"

# Nama variable untuk menampung nama kolom transformasi

# value.name= "JUMLAH"

# Nama variable untuk menampung isi data dari kolom transformasi

 

# Tugas Praktek

# Ganti bagian […1…] dengan perintah melt yang sama persis dengan contoh di Lesson.

# Jika semua berjalan lancar, maka potongan tampilan hasil transformasi data akan terlihat sebagai berikut.

# > penduduk.dki.transform
#        NAMA.KECAMATAN         NAMA.KELURAHAN      DEMOGRAFIK JUMLAH
# 1     KEP. SERIBU UTR            P. PANGGANG 35-39.Laki-Laki    231
# 2     KEP. SERIBU UTR              P. KELAPA 35-39.Laki-Laki     84
# 3     KEP. SERIBU UTR             P. HARAPAN 35-39.Laki-Laki    255
# 4     KEP. SERIBU SLT         P. UNTUNG JAWA 35-39.Laki-Laki    199
# 5     KEP. SERIBU SLT              P. TIDUNG 35-39.Laki-Laki     98
# 6     KEP. SERIBU SLT                P. PARI 35-39.Laki-Laki    113
# 7              GAMBIR                 GAMBIR 35-39.Laki-Laki    166
# 8              GAMBIR                 CIDENG 35-39.Laki-Laki    850
# ...
# ...
# 268   KEP. SERIBU UTR            P. PANGGANG 35-39.Perempuan    235
# 269   KEP. SERIBU UTR              P. KELAPA 35-39.Perempuan     88
# 270   KEP. SERIBU UTR             P. HARAPAN 35-39.Perempuan    238
# 271   KEP. SERIBU SLT         P. UNTUNG JAWA 35-39.Perempuan    185
# 272   KEP. SERIBU SLT              P. TIDUNG 35-39.Perempuan     75
# 273   KEP. SERIBU SLT                P. PARI 35-39.Perempuan    112
# 274            GAMBIR                 GAMBIR 35-39.Perempuan    174
# 275            GAMBIR                 CIDENG 35-39.Perempuan    748
# ...
# ...
# 534          CIPAYUNG                  CEGER 35-39.Perempuan    930


library(openxlsx)
library(reshape2)
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
#Transformasi kolom dataset penduduk.dki.xlsx, disimpan ke variable penduduk.dki.transform
penduduk.dki.transform <- melt(data=penduduk.dki.xlsx, id.vars=c( "NAMA.KECAMATAN", "NAMA.KELURAHAN"), measure.vars = c("35-39.Laki-Laki", "35-39.Perempuan"), variable.name = "DEMOGRAFIK", value.name="JUMLAH")
#Menampilkan variable penduduk.dki.transform
penduduk.dki.transform