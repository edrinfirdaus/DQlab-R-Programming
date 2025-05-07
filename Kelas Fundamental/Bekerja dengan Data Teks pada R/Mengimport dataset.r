# Setelah membaca dan memahami cara import dan membaca dataset serta memecahnya ke dalam 1 kolom, aku jadi merasa sedikit cemas.

# “Wah, Ndra, kalau semua datanya disimpan ke dalam satu kolom, nantinya apakah tidak sulit untuk diolah? Apa yang bisa kita lakukan untuk memisahkan data-data tersebut ke dalam kolomnya masing-masing?” tanyaku dengan perasaan bingung.

# “Tidak perlu khawatir. Yuk, sebelum menuju ke bagian itu, kamu coba untuk melakukan import file nya terlebih dahulu!”, ajak Andra.

 

# Bantulah Sunyi untuk membaca file yang diminta Andra dengan jalan melengkapi kode melalui Code Editor. Setelah selesai, jalankan dengan menekan , dan hasil berikut akan diperoleh di Console,

#Preload dataset yang digunakan
data <- read.table(
  file = "https://storage.googleapis.com/dqlab-dataset/datalahir_teks_dqlab.txt",
  header = FALSE, 
  sep = "\n", 
  na.strings=c("NA", "N/A", ""), 
  col.names = 'data_list',
  skip = 1)

#Menampilkan data yang sudah di-load ke dalam workspace
data