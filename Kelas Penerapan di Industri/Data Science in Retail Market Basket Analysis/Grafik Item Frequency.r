library(arules)
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Tampilan item frequency plot
itemFrequencyPlot(transaksi)


# Selain tampilan transaksi dalam bentuk matrix, kita bisa juga melihat distribusi transaksi dari tiap item dalam bentuk grafik dengan menggunakan fungsi itemFrequencyPlot.

# Perintahnya sederhana, seperti terlihat pada contoh berikut dimana kita plot distribusi dari dataset kita.

# itemFrequencyPlot(transaksi)
# Tambahkan perintah tersebut pada code editor pada bagian di bawah comment "#Tampilan item frequency plot". Jika berhasil, maka akan muncul gambar berikut.



# Dari distribusi ini, terlihat item Teh Celup paling laku dan Gula paling sedikit transaksinya.