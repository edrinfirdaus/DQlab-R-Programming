# Perintah untuk mengubah dua kolom pada praktek sebelumnya bisa disingkat dengan konstruksi berikut:

# names(variable)[c(rentang_posisi)] <- c("nama_baru_1", "nama_baru_2")
# Dengan rentang_posisi adalah daftar nomor dari posisi indeks dari nama kolom yang ingin diubah. Berikut adalah contoh dimana kita mengubah nama kolom dari TAHUN ke PERIODE (posisi 1) dari dataset kita.

# names(penduduk.dki.csv)[c(1:2)] <- c("PERIODE", "PROPINSI")
# Tugas Praktek

# Gantilah bagian […1…] dengan perintah yang mengubah nama kolom dari dataset kependudukan.dki.csv pada posisi pertama dengan "PERIODE" dan posisi kedua dengan "PROPINSI".

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
names(penduduk.dki.csv)[c(1:2)] <- c("PERIODE", "PROPINSI")
names(penduduk.dki.csv)