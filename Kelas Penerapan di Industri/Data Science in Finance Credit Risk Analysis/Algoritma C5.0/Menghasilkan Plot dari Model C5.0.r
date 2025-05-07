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
plot(risk_rating_model)



# Selain model teks dari praktek sebelumnya, kita juga bisa menghasilkan decision tree dalam bentuk grafik. Dan cuma butuh satu perintah untuk melakukan hal ini, yaitu:

# plot(model)
# Dengan code praktek yang telah kita lakukan - dimana model kita namakan risk_rating_model - maka perintah tersebut kita sesuaikan menjadi.

# plot(risk_rating_model)
# Ketikkan perintah tersebut untuk menggantikan bagian #[...1...] dari code editor. Jalankan, dan jika berhasil Anda akan mendapatkan diagram decision tree sebagai berikut.



