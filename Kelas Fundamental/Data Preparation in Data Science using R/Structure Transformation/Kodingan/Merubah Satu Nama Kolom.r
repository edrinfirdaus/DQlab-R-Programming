# Function names ini juga bisa digunakan merubah nama kolom pada data.frame. Untuk merubahnya kita gunakan konstruksi berikut:

# names(variable)[posisi] <- "nama_baru"
# Dengan posisi adalah nomor indeks dari posisi nama kolom yang ingin diubah. Berikut adalah contoh dimana kita merubah nama kolom dari TAHUN ke PERIODE (posisi 1) dari dataset kita.

# names(penduduk.dki.csv)[1] <- "PERIODE"
# Tugas Praktek

# Gantilah bagian […1…] dan […2…] dengan perintah yang merubah nama kolom dari dataset kependudukan.dki.csv pada posisi pertama dengan "PERIODE" dan posisi kedua dengan "PROPINSI".

# Jika berjalan dengan lancar, Anda akan mendapatkan hasil sebagai berikut.

#  [1] "PERIODE"              "PROPINSI"             "NAMA.KABUPATEN.KOTA" 
#  [4] "NAMA.KECAMATAN"       "NAMA.KELURAHAN"       "LUAS.WILAYAH..KM2."  
#  [7] "KEPADATAN..JIWA.KM2." "X"                    "X.1"                 
# [10] "X.2"                  "X.3"                  "X.4"                 
# [13] "X.5"                  "X.6"                  "X.7"                 
# [16] "X.8"                  "X.9"                  "X.10"                
# [19] "X.11"                 "X35.39.Laki.Laki"     "X35.39.Perempuan"    
# [22] "X40.44.Laki.Laki"     "X40.44.Perempuan"     "X45.49.Laki.Laki"    
# [25] "X45.49.Perempuan"     "X50.54.Laki.Laki"     "X50.54.Perempuan"    
# [28] "X55.59.Laki.Laki"     "X55.59.Perempuan"     "X60.64.Laki.Laki"    
# [31] "X60.64.Perempuan"     "X65.69.Laki.Laki"     "X65.69.Perempuan"    
# [34] "X70.74.Laki.Laki"     "X70.74.Perempuan"     "X.75.Laki.Laki"      
# [37] "X.75..Perempuan" 


#Membaca dataset csv
penduduk.dki.csv <-read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
names(penduduk.dki.csv)[1] <- "PERIODE"
names(penduduk.dki.csv)[2] <- "PROPINSI"
names(penduduk.dki.csv)