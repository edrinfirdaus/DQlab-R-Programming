# Seusai menyaksikan video, aku langsung mempraktikkan cara melakukan import file TSV mengikuti instruksi berikut ini.

 

# Instruksi :

# Import data https://storage.googleapis.com/dqlab-dataset/customer_segments.txt ke dalam R
# Simpan data https://storage.googleapis.com/dqlab-dataset/customer_segments.txt ke dalam variable bernama data
# Tampilkan isi dari variable data


#Gunakan function read.csv untuk import customer_segmentation.tsv
data <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt", sep="\t")

#Tampilkan isi dari variable data
data