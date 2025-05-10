# Info: Dataset telah diperbarui url-nya pada tanggal 6 Juni 2022, yaitu https://storage.googleapis.com/dqlab-dataset/update.json.
 

# Ada beberapa jenis status code yang umumnya dijumpai, antara lain:

# Artinya permintaan sukses dipenuhi.
# Artinya berkas yang diminta tidak dapat ditemukan.
# Artinya akses permintaan ditolak.
# Artinya terjadi kesalahan pada server.
# Informasi lengkap mengenai jenis-jenis status code dapat diakses melalui :

# https://restfulapi.net/http-status-codes/

# Anda dapat menggunakan fungsi status_code() untuk mengetahui status atas permintaan Anda melalui API. Sekarang coba lihatlah status atas permintaan yang telah Anda buat! Apakah permintaan Anda berhasil?


library(httr)
set_config(config(ssl_verifypeer = 0L))
resp <- GET("https://storage.googleapis.com/dqlab-dataset/update.json")
status_code (resp)
