# Bagaimana Nyi? Sudah bisa menerapkan cara-cara untuk mengakses element pada Dataframe?” tanya Andra memastikan.

# “Hehe.. sudah bisa dong Ndra! Ternyata tidak sesulit seperti yang dibayangkan,” jawabku  penuh semangat.

# “Berarti udah siap dong buat berkenalan dengan tanda $ ?” tanya Andra.

# “Bukannya itu tanda mata uang dollar ya?”

# “Haduh.. Sunyi. Minum air dulu gih, biar ga pusing,” ujar Andra sambil menggosok kepalanya.

# Aku tergelak kecil, tapi tetap menurutinya untuk mengambil minum. “Udah mulai fresh belum Nyi?” tanya Andra kepadaku. Aku mengangguk dan mulai penasaran apa yang sebenarnya akan kupelajari berikutnya.

# “Oke, kalo gitu sekarang coba pelajari materi selanjutnya di modul ini ya,” ujar Andra. Menuruti perkataannya, aku langsung membaca materi berikut ini.

# Untuk mengakses semua element yang ada pada satu kolom dengan jumlah Dataframe yang banyak, misalnya pada satu row terdapat 1.000.000 Dataframe maka agar tidak menuliskannya secara manual dapat menggunakan tanda $ untuk memilih kolom dari Dataframe.

# Misalnya ketika ingin menampilkan semua element Dataframe df yang ada pada kolom periode_kerja, hanya perlu menggunakan df$periode_kerja.


#Konstruksi Dataframe
nama <- c("Kroma", "Andra", "Aksara", "Antara", "Senja")
pekerjaan <- c("Manager", "Senior Data Scientist", "Data Analyst", "Data Engineer", "Senior Data Analyst")
periode_kerja <- c(5,2,1,1,3)
df <- data.frame(nama,pekerjaan,periode_kerja)

#Tampilkan seluruh element pada kolom 'nama' dengan menggunakan $
df$nama

#Tampilkan seluruh element pada kolom 'pekerjaan' dengan menggunakan $
df$pekerjaan

#Tampilkan seluruh element pada kolom 'periode_kerja' dengan menggunakan $
df$periode_kerja