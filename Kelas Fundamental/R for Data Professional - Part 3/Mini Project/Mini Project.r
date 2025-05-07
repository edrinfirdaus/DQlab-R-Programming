# “Woohoo!” teriakku sambil berdiri dan mengangkat kedua tangan. Akhirnya, aku sudah selesai mempelajari Dataframe. Sekarang adalah saat yang ditunggu-tunggu, “Andra, let’s go mengelola data klien!” ajakku dengan semangat. 

# “Oke, karena keliatannya kamu sudah memahami Dataframe sepertinya kamu sudah siap untuk mengelola data klien secara langsung. Ini instruksi yang harus kamu perhatikan untuk mengelola data klien ini, are you ready Nyi?” ujar Andra kepadaku.

# “Aye aye Captain!” jawabku sambil memberi hormat.

# Aku kembali duduk di meja kerjaku dan membuka data serta instruksi yang telah diberikan Andra, aku mengambil segelas air putih di sampingku lalu segera menghabiskannya dengan sekali tegukan. I have to make my mind clear, ini momen yang sudah aku nantikan jangan sampai ada kesalahan, janjiku dalam hati.

# Aku membaca instruksi di bawah ini dan segera mengelola data klien menggunakan ilmu yang sudah kupelajari selama ini. Saatnya praktik yang sesungguhnya telah dimulai!

# Instruksi :

# Import file https://storage.googleapis.com/dqlab-dataset/customer_segments.txt dan simpan ke dalam variable data_customer
# Ubah data_customer menjadi Dataframe dengan menggunakan as.data.frame jika tipe data pada langkah nomor 1 belum merupakan Dataframe.
# Tampilkan 5 data teratas dari data_customer
# Tampilkan 5 data terbawah dari data_customer
# Tampilkan struktur data dari data_customer
# Gunakan function lapply() untuk melihat tipe data dari setiap kolom yang ada pada data_customer
# Rata-rata umur dari tiap jenis kelamin
# Jumlah individu untuk setiap profesi
# Rata-rata nilai belanja setahun berdasarkan profesi


#Import data customer_segmentation.tsv dan simpan ke dalam variable data_customer
data_customer <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")

#Ubah data_customer menjadi Dataframe dengan as.data.frame jika belum merupakan Dataframe
if (!is.data.frame(data_customer))
    data_customer <- as.data.frame(data_customer)

#Tampilkan 5 data teratas dari data_customer
head(data_customer, 5)

#Tampilkan 5 data terbawah dari data_customer
tail(data_customer, 5)

#Tampilkan struktur dari data_customer
str(data_customer)

#Gunakan function lapply() untuk melihat tipe data dari masing-masing kolom pada data_customer
lapply(data_customer, class)

#Rata-rata umur dari tiap jenis kelamin
aggregate(data_customer$Umur, list(data_customer$Jenis.Kelamin), mean)

#Jumlah individu untuk setiap profesi (gunakan FUN = length)
aggregate(data_customer$Profesi, list(data_customer$Profesi), length)

#Rata-rata nilai belanja setahun berdasarkan profesi
aggregate(data_customer$NilaiBelanjaSetahun, list(data_customer$Profesi), mean)
