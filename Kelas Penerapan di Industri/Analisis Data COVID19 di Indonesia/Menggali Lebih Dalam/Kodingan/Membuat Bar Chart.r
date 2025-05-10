# Anda sungguh luar biasa! Dengan menggunakan data hasil perhitungan tersebut maka sekarang Anda dapat membuat bar-chat penambahan kasus pekanan yang ditambahkan informasi baru untuk menjawab pertanyaan: “Apakah pekan ini lebih baik?”

# Salin dan jalankan kode berikut di konsol Anda!



 

# Adapun hasil yang diharapkan adalah sebagai berikut (untuk pekan ke-9 s/d 29 tahun 2020).

library(ggplot2)
library(hrbrthemes)

ggplot(cov_jabar_pekanan[cov_jabar_pekanan$tahun==2020,], 
       aes(pekan_ke, jumlah, fill = lebih_baik)) + 
  geom_col(show.legend = FALSE) +
  scale_x_continuous(breaks = 9:29, expand = c(0, 0)) +
  scale_fill_manual(values = c("TRUE" = "seagreen3", "FALSE" = "salmon")) +
  labs(
    x = NULL,
    y = "Jumlah kasus",
    title = "Kasus Pekanan Positif COVID-19 di Jawa Barat",
    subtitle = "Kolom hijau menunjukan penambahan kasus baru lebih sedikit dibandingkan satu pekan sebelumnya",
    caption = "Sumber data: covid.19.go.id"
  ) +
  theme_ipsum(
    base_size = 13,
    plot_title_size = 21,
    grid = "Y",
    ticks = TRUE
  ) +
  theme(plot.title.position = "plot")