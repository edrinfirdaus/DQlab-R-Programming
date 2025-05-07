library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi)
inspect(subset(mba, lhs %in% "Gula"))


# Filter dari praktek sebelumnya hanya berfokus kepada rhs, tentunya bisa juga dengan lhs.

# Berikut adalah contoh perintah inspect untuk filter lhs dengan item Gula.

# inspect(subset(mba, lhs %in% "Gula"))

# Tugas Praktek

# Tambahkan pada code editor perintah untuk melakukan filter objek mba dimana itemset pada sisi lhs memiliki item Gula.

# Jika berhasil maka rule yang muncul adalah sebagai berikut. Terlihat disini ada satu rules dimana lhs nya sama-sama memiliki item Sirup.

#     lhs                rhs     support confidence lift
# [1] {Gula,Pet Food} => {Sirup} 0.1     1          1.666667
 

# Code Editor RSubmitRun
# library(arules)
# transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
# mba <- apriori(transaksi)
# inspect(subset(mba, lhs %in% "Gula"))

# 1
# library(arules)
# 2
# transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
# 3
# mba <- apriori(transaksi)
# 4
# inspect(subset(mba, lhs %in% "Gula"))
# 5
# ​