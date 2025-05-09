# Silakan diketikkan code yang dicontohkan dan kemudian hapuslah komentar ini
library(dplyr)
library(ggplot2)

tabel <- read.csv("https://storage.googleapis.com/dqlab-dataset/lo5_m01_mp02.csv") %>%
  mutate(Bulan = substr(Bulan, 1, 3),
        Karyawan.A = Karyawan.A/1000,
        Karyawan.B = Karyawan.B/1000,
        Karyawan.C = Karyawan.C/1000,
        Karyawan.D = Karyawan.D/1000,
        Karyawan.E = Karyawan.E/1000)

plt <- ggplot(data = tabel,
       aes(x = factor(tabel$Bulan, levels = tabel$Bulan))) +
  geom_line(aes(y = Karyawan.A, group=1,
                colour = "Karyawan A"),
            colour = "gray",
            size = 1) +
  geom_line(aes(y = Karyawan.B, group=1),
            colour = "gray",
            size = 1.25) +
  geom_line(aes(y = Karyawan.C, group=1),
            colour = "gray",
            size = 0.75) +
  geom_line(aes(y = Karyawan.D, group=1),
            colour = "gray",
            size = 1.5) +
  geom_line(aes(y = Karyawan.E, group=1),
            colour = "darkblue",
            size = 2) + 
  ylim(10, 40) +
  # Produktivitas tertinggi
  annotate("segment", x=8.5, xend=9, y=38, yend=max(tabel$Karyawan.E),
           colour="darkblue", size=0.5) + 
  annotate("text", x=7.5, 38, size=3, hjust=0, colour="darkblue",
           label=paste("Produktivitas\ntertinggi\n", 
                       toString(max(tabel$Karyawan.E)))) + 
  # Karyawan A
  annotate("segment", x=12, xend=12.15, colour="grey", size=0.5, 
           y=tabel$Karyawan.A[12], yend=tabel$Karyawan.A[12]-1.5) + 
  annotate("text", x=12.2, y=tabel$Karyawan.A[12]-1,
           hjust=0, colour="grey", label="Karyawan A") +
  annotate("text", x=12.2, y=tabel$Karyawan.A[12]-2, 
           hjust=0, colour="grey", size=3,
           label=paste("avg:", toString(mean(tabel$Karyawan.A)))) +
  # Karyawan B
  annotate("segment", x=12, xend=12.15, colour="grey", size=0.5, 
           y=tabel$Karyawan.B[12], yend=tabel$Karyawan.B[12]+1.5) + 
  annotate("text", x=12.2, y=tabel$Karyawan.B[12]+2,
           hjust=0, colour="grey", label="Karyawan B") +
  annotate("text", x=12.2, y=tabel$Karyawan.B[12]+1, 
           hjust=0, colour="grey", size=3,
           label=paste("avg:", toString(mean(tabel$Karyawan.B)))) +
  # Karyawan C
  annotate("segment", x=12, xend=12.15, colour="grey", size=0.5,
           y=tabel$Karyawan.C[12], yend=tabel$Karyawan.C[12]+1.5) + 
  annotate("text", x=12.2, y=tabel$Karyawan.C[12]+2,
           hjust=0, colour="grey", label="Karyawan C") +
  annotate("text", x=12.2, y=tabel$Karyawan.C[12]+1, 
           hjust=0, colour="grey", size=3,
           label=paste("avg:", toString(mean(tabel$Karyawan.C)))) +
  # Karyawan D
  annotate("segment", x=12, xend=12.15, colour="grey", size=0.5,
           y=tabel$Karyawan.D[12], yend=tabel$Karyawan.D[12]-1.5) + 
  annotate("text", x=12.2, y=tabel$Karyawan.D[12]-1,
           hjust=0, colour="grey", label="Karyawan D") +
  annotate("text", x=12.2, y=tabel$Karyawan.D[12]-2, 
           hjust=0, colour="grey", size=3,
           label=paste("avg:", toString(mean(tabel$Karyawan.D)))) +
  # Karyawan E
  annotate("segment", x=12, xend=12.15, colour="darkblue", size=0.5,
           y=tabel$Karyawan.E[12], yend=tabel$Karyawan.E[12]+0.5) + 
  annotate("text", x=12.2, y=tabel$Karyawan.E[12]+1,
           hjust=0, colour="darkblue", label="Karyawan E") +
  annotate("text", x=12.2, y=tabel$Karyawan.E[12], 
           hjust=0, colour="darkblue", size=3,
           label=paste("avg:", toString(mean(tabel$Karyawan.E)))) +
  labs(x = "", y = "Jumlah produk (ribuan)\n",
       title = "Best Employee 2019",
       subtitle = "Lima karyawan dengan produktivitas tertinggi") +
  theme(axis.text = element_text(size = 10),
        axis.ticks.x = element_blank(),
        plot.title = element_text(hjust = 0, size = 18, face="bold"),
        panel.background = element_rect(fill = "white"))

options(repr.plt.width = 10, repr.plt.height = 1)
plt