# Sering sekali nilai kategori tidak sesuai dengan yang kita inginkan, sebagai contoh kita ingin nilai "Jan" ditampilkan sebagai "Januari". Di factor, kita lakukan ini dengan mengganti nilai levels pada index yang kita inginkan.

# Mari kita perhatikan contoh faktor berikut. Terdapat satu variabel factor.bulan dengan levels "Feb", "Jan", dan "Mar".

 



# Jika kita ingin ganti "Jan" (posisi ke 2 pada levels) menjadi "Januari", maka perintah yang kita gunakan adalah:

# levels(factor.bulan)
# [2] <- "Januari"
# Berikut adalah penjelasan konstruksi perintah di atas.

# Konstruksi

# Keterangan

# levels(…)

# adalah fungsi untuk mengambil levels dari sebuah factor

 

# factor.bulan

# Variable factor

# [2]

# Posisi kedua – dalam hal ini posisi dari levels

# <-

# Operator assignment atau perintah untuk memasukkan data

# "Januari"

# Nilai yang akan dimasukkan ke levels posisi kedua

 

# Tugas Praktek

# Pada code editor, ganti bagian […1…] dengan perintah mengganti posisi ketiga dari levels dari "Mar" menjadi "Maret".

# Kemudian ganti bagian […2…] dengan perintah untuk menampilkan variable faktor.bulan.

# Jika semua berjalan dengan baik, maka hasilnya akan tampak sebagai berikut.

# [1] Januari Feb     Maret   Januari Maret   Januari
# Levels: Feb Januari Maret


#Buatlah factor dengan teks "Jan", "Feb", "Mar","Jan","Mar", dan "Jan"
factor.bulan <- factor(c("Jan","Feb","Mar","Jan","Mar","Jan"))
#Mengganti levels 
levels(factor.bulan)[2] <- "Januari"
levels(factor.bulan)[3] <- "Maret"
factor.bulan
