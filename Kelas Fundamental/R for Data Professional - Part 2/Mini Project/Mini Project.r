# Setelah belajar dan berlatih, aku beristirahat dulu dengan melihat pemandangan kota dari ruanganku sambil minum kopi. Setelah beberapa saat, Andra mendekatiku, terlihat cengiran jahil di wajahnya.


# “Gimana pembelajarannya? Sudah mengerti semua belum?” tanyanya.


# “Sejauh ini sudah. Apalagi ditambah mengerjakan latihan, materinya jadi nempel di otak,” jawabku.


# “Kalau gitu sudah bisa bantu mengerjakan tugas, dong. Kebetulan ada tugas lain dari Kroma sebagai hukuman minggu lalu yang belum dikerjakan,” ucap Andra.


# “Oalah. Bisa, Ndra. Tugas apa?”


# “Tugasnya diminta untuk merekap data cuti teman-teman di DQLab dan membuat analisis sederhana,” pinta Andra, “Sekalian untuk membuktikan pemahaman kamu tentang materi ini.,”


# “Siap!”


# Yuk, bantu aku untuk mengerjakan tugas Andra sekaligus melatih pemahaman materi!


# Tugas dari Andra :

# Data sisa cuti karyawan DQLab yang dapat dilihat pada Tabel sisa cuti karyawan DQLab.
# Buatlah vector bernama sisa_cuti yang berisi data angka sisa cuti dari masing-masing karyawan (urut dari Senja - Andra).
# Buatlah vector bernama nama_karyawan yang berisi nama dari karyawan DQLab (urut dari Senja - Andra).
# Berikan nama kepada vector sisa_cuti dengan menggunakan nama_karyawan.
# Tampilkan karyawan yang memiliki sisa cuti lebih dari 10.
# Tampilkan karyawan dengan sisa cuti terkecil.
# Berapa rata-rata sisa cuti yang dimiliki karyawan DQLab?


#variable sisa_cuti
sisa_cuti <- c(13,10,6,12,7)
 
#variable nama_karyawan
nama_karyawan <- c("Senja","Aksara","Antara","Kroma","Andra")
 
#memberi nama pada sisa_cuti
names(sisa_cuti) <- nama_karyawan
 
#karyawan yang memiliki sisa cuti lebih dari 10
sisa_cuti[sisa_cuti > 10]
 
#karyawan dengan sisa cuti terkecil
min(sisa_cuti)
 
#rata-rata sisa cuti karyawan
mean(sisa_cuti)

