# Anda telah berhasil membuat bar-chart yang diminta. Namun grafik tersebut belum memiliki informasi yang jelas serta cenderung membosankan untuk dilihat. Sekarang silakan buat kembali grafik tersebut dengan menggunakan baris kode yang telah dimodifikasi berikut:



# Hasil dari potongan coding di atas adalah sebagai berikut (perlu diingat ini adalah kondisi di bulan Juli 2020)



# Untuk bulan Juli 2021 bagaimana ya? Kondisi klaster secapa bandung ditunjukkan oleh segi empat biru.



# Bagaimana lonjakan COVID19 menurut Anda hingga data terakhir?

library(ggplot2)
library(hrbrthemes)
ggplot(new_cov_jabar, aes(tanggal, kasus_baru)) +
	  geom_col(fill = "salmon") +
  labs(
    x = NULL,
    y = "Jumlah kasus",
    title = "Kasus Harian Positif COVID-19 di Jawa Barat",
    subtitle = "Terjadi pelonjakan kasus di awal bulan Juli akibat klaster Secapa AD Bandung",
    caption = "Sumber data: covid.19.go.id"
  ) +
  theme_ipsum(
    base_size = 13,
    plot_title_size = 21,
    grid = "Y",
    ticks = TRUE
  ) +
  theme(plot.title.position = "plot")