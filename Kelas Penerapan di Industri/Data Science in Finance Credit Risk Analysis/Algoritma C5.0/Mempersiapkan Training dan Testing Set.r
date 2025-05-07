library("openxlsx")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

#Mempersiapkan class dan input variables 
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[ , input_columns ]

#Mempersiapkan porsi index acak untuk training dan testing set
set.seed(100)
indeks_training_set <- sample(900, 800)

#Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set,]
class_training_set <- dataCreditRating[indeks_training_set,]$risk_rating
input_testing_set <- datafeed[-indeks_training_set,]


str(input_training_set)
str(class_training_set)
str(input_testing_set)



# Training dan testing set kita akan mengambil dari variable data frame bernama datafeed yang telah kita persiapkan pada praktek sebelumnya. Jumlah baris dataset kita adalah 900, dimana kita akan mengambil 800 baris secara acak sebagai training set dan sisa 100 sebagai testing set.

# Langkah pertama adalah menyusun index untuk training set, caranya adalah menggunakan kedua perintah berikut.

# set.seed(100)
# indeks_training_set <- sample(900, 800)
# dimana:

# set.seed(100) adalah perintah untuk menyeragamkan pengambilan bilangan acak di seluruh aplikasi R.
# sample(900, 800) adalah membuat urutan acak dengan rentang nilai 1 sampai dengan 900, tetapi diambil sebanyak 800 nilai.
# Masukkan kedua perintah di atas untuk menggantikan bagian #[...1...] pada code editor.

# Langkah kedua adalah membuat variable untuk training set (input dan class variable) dan testing set (input variable saja) berdasarkan index di atas dengan perintah berikut.

# input_training_set <- datafeed[indeks_training_set,]
# class_training_set <- dataCreditRating[indeks_training_set,]$risk_rating
# input_testing_set <- datafeed[-indeks_training_set,]
# dimana:

# input_training_set akan diisi dari data frame datafeed dengan index yang isinya terdapat pada variable indeks_training_set.
# class_training_set akan diisi dari data frame dataCreditRating dengan index yang isinya terdapat pada variable indeks_training_set.
# input_testing_set akan diisi datafeed dengan index yang isinya tidak ada di indeks_training_set - perhatikan tanda minus yang ada di depan variable indeks_training_set.
# Masukkan kedua perintah tersebut ke dalam code editor untuk menggantikan bagian #[...2...]. Jalankan dan lihat hasilnya, jika berjalan dengan lancar maka akan tampil dua struktur dataset dimana satunya berjumlah 800 row dan satunya berjumlah 100.

# > str(input_training_set)
# 'data.frame':	800 obs. of  2 variables:
#  $ durasi_pinjaman_bulan: num  36 24 12 36 48 24 24 36 24 12 ...
#  $ jumlah_tanggungan    : num  2 0 3 4 6 4 3 2 1 4 ...

# > str(class_training_set)
#  Factor w/ 5 levels "1","2","3","4",..: 2 1 3 2 5 3 3 2 2 3 ...

# > str(input_testing_set)
# 'data.frame':	100 obs. of  2 variables:
#  $ durasi_pinjaman_bulan: num  12 48 24 12 36 24 24 48 36 12 ...
#  $ jumlah_tanggungan    : num  0 3 5 0 5 5 5 0 2 4 ...
 