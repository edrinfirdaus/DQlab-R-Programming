# Langkah pertama yang perlu kita lakukan adalah membaca dataset inflasi tersebut dari file teks menjadi data.frame di R dengan perintah read.csv.

# Berdasarkan keterangan mengenai dataset ini dan praktek di dua bab sebelumnya, kita langsung lakukan praktek sebagai berikut.

 

# Tugas Praktek

# Ganti bagian […] dengan kedua perintah berikut pada code editor yang berfungsi untuk membaca dan menampilkan data inflasi .

# inflasi.indo.sing <- read.csv("https://storage.googleapis.com/dqlab-dataset/inflasi.csv", sep=",")
# inflasi.indo.sing
# Jika berjalan lancar, maka hasil yang didapatkan adalah sebagai berikut.

#Membaca data csv dan dimasukkan ke variable inflasi.indo.sing
inflasi.indo.sing <- read.csv("https://storage.googleapis.com/dqlab-dataset/inflasi.csv", sep=",")
inflasi.indo.sing