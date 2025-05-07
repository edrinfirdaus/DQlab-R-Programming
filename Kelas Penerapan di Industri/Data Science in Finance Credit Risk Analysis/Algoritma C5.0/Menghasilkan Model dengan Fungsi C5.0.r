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
summary(risk_rating_model)



# Dengan persiapan sebelumnya, sekarang saatnya kita akan menggunakan algoritma C5.0 untuk menghasilkan model decision tree dengan menggunakan fungsi yang juga bernama C5.0. Function ini juga memerlukan package R yang bernama "C50".

# Syntax penggunaan fungsi C5.0 adalah sebagai berikut:

# C5.0(input_variables, class_variables)
# Dengan menggunakan dataset yang sudah kita siapkan maka perintah untuk membentuk model dan sekaligus menyimpannya dalam satu variable bernama risk_rating_model adalah sebagai berikut:

# risk_rating_model <- C5.0(input_training_set, class_training_set)
# Sederhana sekali bukan?

# Namun kita belum selesai, setelah pembentukan model coba tampilkan overview model tersebut dengan perintah summary.

# summary(risk_rating_model)
# Masukkan kedua code yang telah dicontohkan ke dalam code editor untuk menggantikan bagian #[...1...] dan jalankan. Jika semua berjalan dengan lancar, maka output yang dihasilkan adalah sebagai berikut. Detil output ini akan kita bahas pada bab berikutnya.
 
# Class specified by attribute `outcome'

# Read 800 cases (3 attributes) from undefined.data

# Decision tree:

# jumlah_tanggungan > 4:
# :...durasi_pinjaman_bulan <= 24: 4 (98/25)
# :   durasi_pinjaman_bulan > 24: 5 (129/49)
# jumlah_tanggungan <= 4:
# :...jumlah_tanggungan > 2: 3 (219/17)
#     jumlah_tanggungan <= 2:
#     :...durasi_pinjaman_bulan <= 36: 1 (259/80)
#         durasi_pinjaman_bulan > 36:
#         :...jumlah_tanggungan <= 0: 2 (37/7)
#             jumlah_tanggungan > 0: 3 (58/2)


# Evaluation on training data (800 cases):

# 	    Decision Tree   
# 	  ----------------  
# 	  Size      Errors  

# 	     6  180(22.5%)   <<


# 	   (a)   (b)   (c)   (d)   (e)    <-classified as
# 	  ----  ----  ----  ----  ----
# 	   179     1     5     5     6    (a): class 1
# 	    80    30    14     3    12    (b): class 2
# 	           4   258                (c): class 3
# 	           2          73    31    (d): class 4
# 	                      17    80    (e): class 5


# 	Attribute usage:

# 	100.00%	jumlah_tanggungan
# 	 72.62%	durasi_pinjaman_bulan


# Time: 0.0 secs
 