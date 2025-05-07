library("openxlsx")
library("C50")

#Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

#Mempersiapkan class dan input variables 
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan", "kpr_aktif")
datafeed <- dataCreditRating[ , input_columns ]

#Mempersiapkan training dan testing set
set.seed(100) #untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 780)

#Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set,]
class_training_set <- dataCreditRating[indeks_training_set,]$risk_rating
input_testing_set <- datafeed[-indeks_training_set,]

#menghasilkan model
risk_rating_model <- C5.0(input_training_set, class_training_set, control = C5.0Control(label="Risk Rating"))
summary(risk_rating_model)



# Kita fokus ke bagian berikutnya dari output - yang diwarnai biru sebagai berikut.

# Class specified by attribute `Risk Rating'

# Read 800 cases (3 attributes) from undefined.data 
# Hasil ini artinya kita membaca 800 baris data. Ini karena kita mengambil 800 dari 900 data kita menggunakan function sample berikut.

# sample(900, 800)

# Kemudian untuk bagian 3 attributes, ini artinya kita memiliki tiga variable, yaitu:

# input variables: durasi_pinjaman dan jumlah_tanggungan. Dua variable ini didapatkan dari hasil perintah berikut.

# input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
# datafeed <- dataCreditRating[ , input_columns ]
# class variable: risk_rating
# Berikut adalah gambar tampilan dari tiga variable tersebut di Excel.



# Untuk undefined.data bisa kita abaikan saja, karena bagian ini harusnya berisi informasi file .data dari program C5.0 yang asli. Jika ingin mengetahui lebih lanjut mengenai hal ini bisa dilihat pada url https://www.rulequest.com/see5-unix.html dan fokus ke bagian preparing data.

# Cobalah Anda ganti dua hal berikut pada code editor:

# input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
# menjadi
# input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan", "kpr_aktif")
# sample(900, 800) menjadi sample(900, 780)
# Cobalah jalankan dan harusnya Anda akan mendapatkan output baru sebagai berikut. Perhatikan jumlah cases dan attributes sudah berubah.

# Class specified by attribute `Risk Rating'

# Read 780 cases (4 attributes) from undefined.data

# Decision tree:

# kpr_aktif = TIDAK:
# :...durasi_pinjaman_bulan <= 24: 1 (189/45)
# :   durasi_pinjaman_bulan > 24: 2 (136/47)
# kpr_aktif = YA:
# :...jumlah_tanggungan <= 4: 3 (259/4)
#     jumlah_tanggungan > 4:
#     :...durasi_pinjaman_bulan <= 24: 4 (87/15)
#         durasi_pinjaman_bulan > 24: 5 (109/31)