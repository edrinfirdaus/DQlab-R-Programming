# Selain perintah str, kita dapat juga menggunakan function summary untuk melihat kondisi dataset kita dalam bentuk ringkasan yang lebih detil.

# Sebagai contoh, untuk melihat summary dari variable penduduk.dki maka kita gunakan konstruksi berikut.

# summary(penduduk.dki)
# Tugas Praktek

# Gantilah bagian […1…] pada code editor dengan perintah summary  yang menggunakan input variable penduduk.dki.

# Jika berjalan dengan lancar, maka outputnya akan terlihat hasilnya sebagai berikut.

# Untuk angka, maka akan muncul statistik minimum, maximum, mean, meadian, 1st quantile, dan 3rd quantile. Sedangkan untuk nilai lain akan muncul jumlahnya di dataset.


#Membaca dataset dengan read.csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
summary(penduduk.dki)