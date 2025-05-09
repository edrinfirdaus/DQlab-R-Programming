library("openxlsx")
library("C50")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

#Mempersiapkan class dan input variables 
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[ , input_columns ]

#Mempersiapkan training dan testing set
set.seed(100) #untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 800)

#Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set,]
class_training_set <- dataCreditRating[indeks_training_set,]$risk_rating
input_testing_set <- datafeed[-indeks_training_set,]

#menghasilkan dan menampilkan summary model
risk_rating_model <- C5.0(input_training_set, class_training_set)

#Membuat data frame aplikasi baru
aplikasi_baru <- data.frame(jumlah_tanggungan = 6, durasi_pinjaman_bulan = 64)

#melakukan prediksi
predict(risk_rating_model, aplikasi_baru)




# Pada pelajaran sebelumnya kita sudah mempelajari cara memprediksi dari data frame berdasarkan model yang telah dibuat. Sekarang kita mencoba memprediksi dari data yang tidak ada dari data set yang dijadikan model.

# Pada console gantilah pada [...1...] yang menunjukan durasi pinjaman selama 64 bulan.

 

# Jika berjalan dengan lancar maka output dari perintah tersebut akan muncul sebagai berikut.

# [1] 5
# Levels: 1 2 3 4 5
# Ini artinya hasil prediksi risk_rating untuk aplikasi baru ini adalah 5, dari kemungkinan 1, 2, 3, 4 dan 5. Nilai 5 ini adalah nilai resiko yang sangat tinggi dikarenakan durasi peminjaman tidak termasuk dalam data yang di lakukan model.