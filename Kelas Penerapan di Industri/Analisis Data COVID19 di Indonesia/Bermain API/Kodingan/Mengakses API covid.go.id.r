# # Info: Dataset telah diperbarui url-nya pada tanggal 6 Juni 2022, yaitu https://storage.googleapis.com/dqlab-dataset/update.json.


# Rekapitulasi data COVID-19 Indonesia tersedia dalam API publik yang sekarang beralamat di https://storage.googleapis.com/dqlab-dataset/update.json.

# Salah satu cara untuk mengakses API adalah dengan menggunakan fungsi GET() dari paket httr.

# Sekarang aktifkanlah paket httr dan jalankan fungsi GET() pada alamat API yang telah disebutkan! Simpan hasil fungsi tersebut dalam obyek bernama resp.


library(httr)
set_config(config(ssl_verifypeer = 0L))
resp <- GET ("https://storage.googleapis.com/dqlab-dataset/update.json")