# Akhirnya Anda berhasil menjinakan data cov_jabar sehingga lebih mudah untuk diolah, selamat! Memiliki data yang rapi memang menyenangkan, apakah Anda setuju dengan hal tersebut?

# Setelah memiliki data yang jinak, sekarang saatnya Anda mengekspresikan data tersebut dalam bentuk lain yang harapannya lebih mudah dicerna: grafik. Anda akan memulai merancang visualisasi yang memiliki estetika dengan menggunakan paket ggplot2 dan paket hrbrthemes. Aktifkanlah kedua paket tersebut!

# Berikut merupakan templat kode untuk membuat visualisasi menggunakan ggplot2:

# ggplot(data = ..., aes(x = ..., y = ...)) +
#   geom_xxx()
# Berdasarkan templat tersebut, komponen utama untuk membuat visualisasi antara lain adalah tabel data, kolom data, serta bentuk geometri untuk mempresentasikan data. Sebagai contoh untuk membuat scatter-plot yang diperlukan adalah bentuk geometri titik (geom_col()), line-chart memerlukan geometri garis (geom_line()), sedangkan bar-chart memerlukan bentuk geometri batang atau kolom (geom_bar() atau geom_col()).

# Lengkapi baris kode berikut untuk membuat bar-chart jumlah kasus baru harian COVID-19 di Jawa Barat menggunakan data new_cov_jabar! Pergunakan kolom “tanggal” sebagai sumbu-x.


# Output yang dihasilkan hingga menjelang akhir Juli 2020:



 

# Karena kita masih terhubung dengan data COVID19 melalui https://storage.googleapis.com/dqlab-dataset/prov_detail_JAWA_BARAT.json tentunya absica grafik yang muncul akan menunjukkan ke waktu di mana kamu menjalankan project ini.

 

# Misalnya, kondisi COVID19 di awal Juli 2021 akan diperlihatkan seperti berikut:



# dan kondisi COVID19 di akhir April 2022



# Bagaimana kondisi COVID19 saat ini?

library(ggplot2)
library(hrbrthemes)
ggplot(data = new_cov_jabar, aes(x = tanggal, y = kasus_baru)) +
  geom_col()