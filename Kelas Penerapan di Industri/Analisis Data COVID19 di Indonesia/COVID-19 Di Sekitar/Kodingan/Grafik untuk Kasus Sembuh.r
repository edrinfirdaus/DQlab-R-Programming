# Sekarang buatlah grafik serupa dengan menggunakan data kasus sembuh  Pergunakan warna “olivedrab2” untuk grafik kasus sembuh!

# Hasil yang diharapkan adalah sebagai berikut untuk data hingga Juli 2020:



# Setelah lebih dari setahun, yaitu kondisi sembuh di awal Juli 2021 akan diperlihatkan seperti berikut



# Bagaimana menurut Anda hingga data terakhir?


library(ggplot2)
library(hrbrthemes)
ggplot(new_cov_jabar, aes(tanggal, sembuh)) +
  geom_col(fill = "olivedrab2") +
  labs(
    x = NULL,
    y = "Jumlah kasus",
    title = "Kasus Harian Sembuh Dari COVID-19 di Jawa Barat",
    caption = "Sumber data: covid.19.go.id"
  ) +
  theme_ipsum(
    base_size = 13, 
    plot_title_size = 21,
    grid = "Y",
    ticks = TRUE
  ) +
  theme(plot.title.position = "plot")