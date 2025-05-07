# Dengan proses perbaikan pengurutan yang telah kita lakukan sebelumnya, saatnya kita plotting ulang data inflasi kita.

 

# Tugas Praktek

# Yang ada pada code editor merupakan kumpulan code yang telah kita lakukan dan perbaiki sepanjang bab ini. Tapi pada code ini juga ditambahkan layer geom_text yang digunakan untuk menandai label-label nilai pada titik di line chart.

# Jalankan langsung code tersebut tanpa perubahan atau tambahan apapun. Anda harusnya mendapatkan grafik sebagai berikut.

library(ggplot2)

#Membaca data csv dan dimasukkan ke variable inflasi.indo.sing
inflasi.indo.sing <- read.csv("https://storage.googleapis.com/dqlab-dataset/inflasi.csv", sep=",")

inflasi.indo.sing$Bulan = factor(inflasi.indo.sing$Bulan, 
                                 levels = c("Jan-2017", "Feb-2017", "Mar-2017", "Apr-2017", "May-2017", "Jun-2017", "Jul-2017", "Aug-2017", "Sep-2017", "Oct-2017"))

#Menambahkan data dan aesthetic mapping
plot.inflasi <- ggplot(data=inflasi.indo.sing, aes(x = Bulan,  y=Inflasi,  color=Negara, group=Negara))


#Menambahkan Layer dan labels
plot.inflasi + geom_line() + geom_text(aes(label=Inflasi),hjust=-0.2, vjust=-0.5)