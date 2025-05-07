library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
inspect(subset(mba, (lhs %in% "Teh Celup" | rhs %in% "Teh Celup") & lift>1))


# Kita bisa melakukan filter terhadap metrik kualitas dari association rules: support, confidence dan lift dengan function subset. Function yang sama untuk melakukan filter terhadap lhs dan rhs.

# Bedanya adalah karena angka, maka untuk ketiga metrik tersebut kita gunakan operator perbandingan angka.

# Sebagai contoh, untuk melakukan filter terhadap objek mba dengan kondisi berikut:

# lhs atau rhs memiliki Teh Celup
# lift di atas 1
# maka perintahnya adalah sebagai berikut

# subset(mba, (lhs %in% "Teh Celup" | rhs %in% "Teh Celup") & lift>1)

# Perhatikan untuk ekspresi lhs dan rhs ditutup dengan kurung sebelum digabungkan dengan kondisi lift.

# Tugas Praktek

# Tambahkan perintah pada code editor untuk melakukan filter dimana lhs atau rhs memiliki item Teh Celup.

# Hasilnya akan terlihat sebagai berikut.  

#      lhs                     rhs     support confidence lift   
# [1] {Pet Food,Teh Celup} => {Sirup} 0.2     0.6666667  1.111111 
# Hanya terdapat 1 rule sebagai hasil filter dan paket produk ini cukup menjanjikan, dimana Teh Celup menjadi komponen dari itemset di lhs.

# Code Editor RSubmitRun
# library(arules)
# transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
# mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
# inspect(subset(mba, (lhs %in% "Teh Celup" | rhs %in% "Teh Celup") & lift>1))
# 1
# library(arules)
# 2
# transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
# 3
# mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
# 4
# inspect(subset(mba, (lhs %in% "Teh Celup" | rhs %in% "Teh Celup") & lift>1))
# ConsoleGraphicAsk AI Chatbot
# > 
 
