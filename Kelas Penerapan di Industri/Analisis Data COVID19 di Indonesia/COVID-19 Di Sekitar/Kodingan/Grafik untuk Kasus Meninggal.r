# Sekarang buatlah grafik serupa dengan menggunakan data kasus meninggal. Pergunakan warna “darkslategray4” untuk kasus meninggal!

# Output yang seharusnya dihasilkan adalah sebagai berikut (hingga Juli 2020).



# Setelah lebih dari setahun pandemi COVID19 (hingga Juli 2021) terlihat kasus kematian seperti berikut:



# Bagaimana menurut Anda kondisi pandemi COVID ini berdasarkan hingga data terakhir dengan visualisasi yang telah dikerjakan?

library(ggplot2)
library(hrbrthemes)
ggplot(new_cov_jabar, aes(tanggal, meninggal)) +
  geom_col(fill = "darkslategray4") +
  labs(
    x = NULL,
    y = "Jumlah kasus",
    title = "Kasus Harian Meninggal Akibat COVID-19 di Jawa Barat",
    caption = "Sumber data: covid.19.go.id"
  ) +
  theme_ipsum(
    base_size = 13, 
    plot_title_size = 21,
    grid = "Y",
    ticks = TRUE
  ) +
  theme(plot.title.position = "plot")