library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
inspect(subset(mba, lhs %in% "Teh Celup" | rhs %in% "Teh Celup"))


# Dengan 16 rules yang dihasilkan, kita bisa memiliki lebih banyak pilihan untuk melakukan filter lhs dan rhs seperti yang telah ditunjukkan pada bab Itemset and Rules.

# Berikut adalah contoh untuk filter dimana lhs atau rhs keduanya memiliki item Teh Celup.

# subset(mba, lhs %in% "Teh Celup" | rhs %in% "Teh Celup")

 

# Tugas Praktek

# Tambahkan perintah pada code editor menampilkan rules yang telah difilter berdasarkan lhs atau rhs yang memiliki item Teh Celup.

# Hasilnya akan terlihat sebagai berikut.

  

#     lhs                     rhs         support confidence lift      
# [1] {}                   => {Teh Celup} 0.8     0.8000000  1.0000000    
# [2] {Gula}               => {Teh Celup} 0.3     0.7500000  0.9375000    
# [3] {Pet Food}           => {Teh Celup} 0.3     0.6000000  0.7500000    
# [4] {Sirup}              => {Teh Celup} 0.4     0.6666667  0.8333333    
# [5] {Teh Celup}          => {Sirup}     0.4     0.5000000  0.8333333    
# [6] {Gula,Sirup}         => {Teh Celup} 0.1     0.5000000  0.6250000    
# [7] {Pet Food,Sirup}     => {Teh Celup} 0.2     0.5000000  0.6250000    
# [8] {Pet Food,Teh Celup} => {Sirup}     0.2     0.6666667  1.1111111    
# [9] {Sirup,Teh Celup}    => {Pet Food}  0.2     0.5000000  1.0000000
 

# Terdapat 9 rule sebagai hasil filter dan jika kita gunakan informasi support, confidence dan lift… maka kandidat yang bagus mungkin hanya rule ke 8 dimana nilai lift lebih dari 1 ({Pet Food, Teh Celup} => {Sirup}).

# Pada praktek selanjutnya kita akan melakukan filter berdasarkan nilai lift dan support.