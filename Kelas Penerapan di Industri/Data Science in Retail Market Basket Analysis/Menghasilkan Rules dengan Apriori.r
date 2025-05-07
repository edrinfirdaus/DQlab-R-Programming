library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menghasilkan associaton rules
apriori(transaksi)


# Saatnya kita menghasilkan rule dari transaksi kita. Seperti dijelaskan pada bab tiga, rule adalah formula yang menyatakan kombinasi dari dua itemset. Satu itemset ada di bagian kiri rule (left hand side) dan satunya di bagian kanan (right hand side) dalam format berikut.

# {itemset lhs} => {itemset rhs}
# Untuk menghasilkan rule ini, kita gunakan fungsi apriori dengan syntax berikut.

# apriori(transaksi)
# Tambahkan perintah ini pada code editor - di bawah comment "#Menghasilkan associaton rules" - dan jalankan. Jika semua berjalan lancar, maka akan muncul hasil berikut.

# Apriori

# Parameter specification:
#  confidence minval smax arem  aval originalSupport maxtime support minlen maxlen
#         0.8    0.1    1 none FALSE            TRUE       5     0.1      1     10
#  target   ext
#   rules FALSE

# Algorithmic control:
#  filter tree heap memopt load sort verbose
#     0.1 TRUE TRUE  FALSE TRUE    2    TRUE

# Absolute minimum support count: 1 

# set item appearances ...[0 item(s)] done [0.00s].
# set transactions ...[4 item(s), 10 transaction(s)] done [0.00s].
# sorting and recoding items ... [4 item(s)] done [0.00s].
# creating transaction tree ... done [0.00s].
# checking subsets of size 1 2 3 done [0.00s].
# writing ... [3 rule(s)] done [0.00s].
# creating S4 object  ... done [0.00s].
# set of 3 rules 
# Banyak sekali informasi dari output yang dihasilkan. Namun untuk saat ini, perhatikan baris terakhir dimana tertulis "set of 3 rules". Ini artinya dengan fungsi apriori ini, kita mendapatkan tiga rules. 