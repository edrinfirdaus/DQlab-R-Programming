library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi)
inspect(subset(mba, lhs %in% "Pet Food" & rhs %in% "Sirup"))


# Kedua praktek sebelumnya menerapkan filter pada lhs atau rhs pada suatu waktu. Kita sebenarnya bisa melakukan filter untuk kedua sisi dengan menggunakan operator & untuk AND dan operator | untuk OR.

# Berikut adalah contoh perintah inspect untuk filter lhs dengan item Pet Food dan rhs dengan item Sirup.

# inspect(subset(mba, lhs %in% "Pet Food" & rhs %in% "Sirup"))

# Tugas Praktek

# Tambahkan pada code editor perintah untuk melakukan filter objek mba dimana itemset lhs memiliki item Pet Food dan rhs memiliki item Sirup.

# Jika berhasil maka rule yang muncul adalah sebagai berikut.

 

#     lhs                rhs     support confidence lift
# [1] {Pet Food}      => {Sirup} 0.4     0.8        1.333333
# [2] {Gula,Pet Food} => {Sirup} 0.1     1.0        1.666667
 