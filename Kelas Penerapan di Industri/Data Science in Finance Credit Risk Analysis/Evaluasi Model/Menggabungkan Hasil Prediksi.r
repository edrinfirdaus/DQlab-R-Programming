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

#menghasilkan model
risk_rating_model <- C5.0(input_training_set, class_training_set, control = C5.0Control(label="Risk Rating"))

#menyimpan hasil prediksi testing set ke dalam kolom hasil_prediksi
#[...1...] <- predict(risk_rating_model, input_testing_set)
input_testing_set$risk_rating <- dataCreditRating[-indeks_training_set,]$risk_rating
input_testing_set$hasil_prediksi <- predict(risk_rating_model, input_testing_set)
#[...2...]
print(input_testing_set)


# Seperti diinformasikan pada subbab sebelumnya, kita akan menyimpan risk_rating dari dataset awal dan hasil prediksi ini ke dalam dua kolom nama yang lain di data frame input_testing_set. Mari kita namakan kolom tersebut dengan risk_rating dan  hasil_prediksi.

# Kita gunakan perintah pertama untuk menyimpan nilai asli risk_rating ke dalam kolom risk_rating.

# input_testing_set$risk_rating <- dataCreditRating[-indeks_training_set,]$risk_rating
# Catatan: Ingat jika -index_training_set (dengan tanda minus di depan) menunjukkan angka-angka indeks untuk testing set.

# Kemudian gunakan perintah kedua untuk menyimpan nilai prediksi ke dalam kolom hasil_prediksi.

# input_testing_set$hasil_prediksi <- predict(risk_rating_model, input_testing_set)
# Masukkan perintah tersebut untuk menggantikan bagian #[...1...] pada code editor. Setelah itu coba ganti bagian [...2...] dengan perintah untuk menampilkan seluruh isi variable input_testing_set dengan perintah berikut.

# print(input_testing_set)
# Jika semua berjalan lancar maka akan tampil output sebagai berikut. Dengan kolom risk_rating dan hasil_prediksi bersampingan, kita bisa langsung bandingkan data awal dengan hasil prediksi. Terlihat ada rating yang sama (prediksi benar) dan berbeda (prediksi salah). Kita akan evaluasi tingkat akurasi dari kedua kolom ini dengan menghasilkan confusion matrix pada bagian selanjutnya.

#     durasi_pinjaman_bulan jumlah_tanggungan risk_rating hasil_prediksi
# 3                      12                 0           1              1
# 8                      48                 3           2              3
# 21                     24                 5           2              4
# 26                     12                 0           1              1
# 28                     36                 5           2              5
# 37                     24                 5           2              4
# 39                     24                 5           1              4
# 45                     48                 0           1              2
# 49                     36                 2           1              1
# 53                     12                 4           2              3
# 54                     48                 1           2              3
# 58                     12                 0           1              1
# 60                     48                 3           2              3
# 61                     48                 2           2              3
# 62                     24                 4           2              3
# 65                     24                 5           2              4
# 75                     24                 3           2              3
# 97                     12                 0           1              1
# 112                    12                 0           1              1
# 117                    24                 3           3              3
# 123                    36                 6           4              5
# 125                    36                 4           3              3
# 128                    36                 6           4              5
# 162                    12                 0           1              1
# 166                    24                 6           4              4
# 187                    12                 6           5              4
# 192                    36                 1           1              1
# 198                    12                 3           3              3
# 219                    48                 2           3              3
# 221                    36                 1           1              1
# 239                    48                 0           2              2
# 250                    24                 4           3              3
# 255                    48                 1           3              3
# 276                    36                 1           1              1
# 284                    24                 4           3              3
# 287                    36                 6           5              5
# 291                    24                 4           3              3
# 323                    48                 4           3              3
# 329                    48                 1           3              3
# 335                    24                 0           1              1
# 336                    48                 2           3              3
# 338                    36                 3           3              3
# 345                    36                 5           4              5
# 348                    24                 0           1              1
# 350                    48                 6           5              5
# 356                    36                 2           2              1
# 386                    48                 5           4              5
# 398                    12                 1           1              1
# 406                    36                 4           3              3
# 416                    24                 3           3              3
# 434                    12                 6           4              4
# 460                    12                 1           1              1
# 466                    48                 1           3              3
# 514                    36                 2           1              1
# 520                    24                 1           2              1
# 526                    24                 3           3              3
# 532                    36                 1           1              1
# 539                    36                 2           2              1
# 541                    24                 1           1              1
# 548                    48                 6           5              5
# 560                    24                 1           1              1
# 564                    24                 1           1              1
# 568                    48                 3           3              3
# 570                    48                 4           3              3
# 572                    24                 4           3              3
# 584                    36                 2           1              1
# 585                    36                 4           3              3
# 587                    12                 6           4              4
# 588                    12                 2           1              1
# 646                    48                 1           3              3
# 660                    36                 4           3              3
# 665                    12                 4           3              3
# 666                    36                 0           2              1
# 673                    48                 3           3              3
# 677                    24                 5           4              4
# 678                    48                 4           3              3
# 679                    48                 0           2              2
# 681                    36                 1           1              1
# 684                    48                 2           3              3
# 687                    12                 2           1              1
# 701                    48                 5           4              5
# 704                    48                 6           5              5
# 707                    12                 2           1              1
# 708                    12                 2           1              1
# 716                    12                 5           4              4
# 732                    24                 6           4              4
# 734                    24                 3           3              3
# 767                    48                 0           2              2
# 776                    12                 6           4              4
# 781                    24                 2           1              1
# 782                    24                 2           1              1
# 790                    12                 6           4              4
# 813                    24                 2           1              1
# 839                    24                 4           3              3
# 842                    36                 0           2              1
# 845                    24                 2           2              1
# 853                    24                 2           1              1
# 861                    48                 5           5              5
# 862                    12                 6           4              4
# 870                    48                 3           3              3
 