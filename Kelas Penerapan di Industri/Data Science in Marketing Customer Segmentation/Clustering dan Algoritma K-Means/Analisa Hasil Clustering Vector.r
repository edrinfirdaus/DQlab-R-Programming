#Bagian Data Preparation

pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")

pelanggan_matrix <- data.matrix(pelanggan[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])

pelanggan <- data.frame(pelanggan, pelanggan_matrix)

Profesi <- unique(pelanggan[c("Profesi","Profesi.1")])

Jenis.Kelamin <- unique(pelanggan[c("Jenis.Kelamin","Jenis.Kelamin.1")])

Tipe.Profesi <- unique(pelanggan[c("Tipe.Residen","Tipe.Residen.1")])

pelanggan$NilaiBelanjaSetahun <- pelanggan$NilaiBelanjaSetahun/1000000

field_yang_digunakan = c("Jenis.Kelamin.1", "Umur", "Profesi.1", "Tipe.Residen.1","NilaiBelanjaSetahun")

#Bagian K-Means

set.seed(1)

segmentasi <- kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)

#Penggabungan hasil cluster

segmentasi$cluster

pelanggan$cluster <- segmentasi$cluster

str(pelanggan)

