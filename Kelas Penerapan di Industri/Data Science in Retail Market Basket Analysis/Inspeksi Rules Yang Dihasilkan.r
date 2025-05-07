library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
mba <- apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))
inspect(mba)


# Dengan pengetahuan kita dari bab sebelumnya, menggunakan function kita bisa menggali informasi detil dari rules dengan inspect.

# Tugas Praktek

# Tambahkan perintah pada code editor untuk menyimpan association rules ke dalam variable mba dan tampilkan isinya dengan function inspect.

# Jika semua berjalan lancar, hasilnya akan terlihat sebagai berikut. 

#      lhs                     rhs         support confidence lift      
# [1]  {}                   => {Pet Food}  0.5     0.5000000  1.0000000     
# [2]  {}                   => {Sirup}     0.6     0.6000000  1.0000000     
# [3]  {}                   => {Teh Celup} 0.8     0.8000000  1.0000000     
# [4]  {Gula}               => {Sirup}     0.2     0.5000000  0.8333333     
# [5]  {Gula}               => {Teh Celup} 0.3     0.7500000  0.9375000     
# [6]  {Pet Food}           => {Sirup}     0.4     0.8000000  1.3333333     
# [7]  {Sirup}              => {Pet Food}  0.4     0.6666667  1.3333333     
# [8]  {Pet Food}           => {Teh Celup} 0.3     0.6000000  0.7500000     
# [9]  {Sirup}              => {Teh Celup} 0.4     0.6666667  0.8333333     
# [10] {Teh Celup}          => {Sirup}     0.4     0.5000000  0.8333333     
# [11] {Gula,Pet Food}      => {Sirup}     0.1     1.0000000  1.6666667     
# [12] {Gula,Sirup}         => {Pet Food}  0.1     0.5000000  1.0000000     
# [13] {Gula,Sirup}         => {Teh Celup} 0.1     0.5000000  0.6250000     
# [14] {Pet Food,Sirup}     => {Teh Celup} 0.2     0.5000000  0.6250000     
# [15] {Pet Food,Teh Celup} => {Sirup}     0.2     0.6666667  1.1111111     
# [16] {Sirup,Teh Celup}    => {Pet Food}  0.2     0.5000000  1.0000000 
# Terlihat dengan merubah parameter pada function apriori, kita mendapatkan jumlah rules yang berbeda.