# Output statistika deskriptif menunjukkan skala variabel x3 yang berbeda dari kedua variabel lainnya. Agar PCA dapat bekerja optimal, data ini akan distandarisasi dengan menggunakan fungsi scale() pada R.
# Dalam contoh ini, Anda hanya perlu run dan submit code di bawah ini.

library(openxlsx)
df <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet="3varb")

#standarisasi variabel (centering dan scaling)
df <- scale(df, center = TRUE, scale = TRUE)
head(df, 3)