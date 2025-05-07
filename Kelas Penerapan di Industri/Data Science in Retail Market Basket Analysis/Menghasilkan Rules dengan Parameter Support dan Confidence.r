library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)
apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))


# Pada bab sebelumnya, kita menghasilkan tiga rules dengan function apriori secara default tanpa parameter apapun. Padahal sebenarnya kita bisa memasukkan parameter tambahan berupa support dan confidence.

# Tanpa parameter tambahan tersebut, maka nilai minimum support adalah 0.1 dan minimum confidence adalah 0.8 sebagai filter dari function apriori.

# Berikut adalah perintah untuk menghasilkan kembali association rules dengan function apriori, tapi kali ini dengan tambahan parameter minimum support dan confidence masing-masing bernilai 0.1 dan 0.5.

# apriori(transaksi,parameter = list(supp = 0.1, confidence = 0.5))

# Tugas Praktek

# Tambahkan perintah pada code editor untuk menghasilkan rule dengan tingkat support minimum 0.1 dan minimum confidence 0.5.

# Hasilnya akan terlihat sebagai berikut.

# Apriori

# Parameter specification:
#  confidence minval smax arem  aval originalSupport maxtime support minlen maxlen
#         0.5    0.1    1 none FALSE            TRUE       5     0.1      1     10
#  target   ext
#   rules FALSE

# Algorithmic control:
#  filter tree heap memopt load sort verbose
#     0.1 TRUE TRUE  FALSE TRUE    2    TRUE

# Absolute minimum support count: 1 

# set item appearances ...[0 item(s)] done [0.00s].
# set transactions ...[4 item(s), 10 transaction(s)] done [0.01s].
# sorting and recoding items ... [4 item(s)] done [0.00s].
# creating transaction tree ... done [0.00s].
# checking subsets of size 1 2 3 done [0.00s].
# writing ... [16 rule(s)] done [0.00s].
# creating S4 object  ... done [0.00s].
# set of 16 rules 

# Perhatikan pada akhir baris output, terdapat 16 rule. Lebih banyak dibandingkan eksekusi perintah apriori sebelumnya yang hanya menghasilkan 3 rule.