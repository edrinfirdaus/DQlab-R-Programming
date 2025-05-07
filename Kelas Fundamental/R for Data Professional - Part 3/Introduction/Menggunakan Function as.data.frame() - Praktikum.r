# Sudah sejauh ini materi yang kupelajari, rasanya lelah juga ya! Banyak pembahasan yang perlu kusimak, sekaligus praktikum yang penuh tantangan. Aku pun meregangkan otot sejenak, aku melihat Andra yang melirikku dan menyahut,

# “Semangat Nyi, semakin banyak kamu belajar dan mempraktikkan berbagai jenis Dataframe, semakin mudah bagimu untuk mengelola data klien perusahaan.”  


# “Oke Ndra, masih semangat kok ini, hehehe,” ujarku sambil terkekeh. Setelah menyeduh kopi dari pantry, aku kembali melanjutkan pembelajaranku tentang materi di bawah ini.

# Dengan menggunakan function head(), tail(), dan str() tersebut, dapat memperoleh gambaran dari Dataframe yang berukuran sangat besar.

# Setelah menggunakan Dataframe bawaan dari R dan berhasil mengimplementasikan function-function sebelumnya, sangat memungkinkan untuk membuat Dataframe sendiri dari awal.

# Hal ini dapat dilakukan dengan menggunakan function as.data.frame untuk mengubah suatu object atau variable menjadi sebuah Dataframe.

# Contohnya, seorang praktisi data memiliki sebuah vector dan ingin mengubah vector tersebut menjadi sebuah Dataframe. Langkah yang dapat dilakukan yaitu dengan menggunakan Syntax untuk as.data.frame yang berupa as.data.frame(object_yang_akan_diubah_menjadi_dataframe).

# Setelah itu, untuk melakukan pengecekkan apakah object yang dikonversi sudah menjadi atau belum menjadi sebuah Dataframe dapat menggunakan function is.data.frame.


# Duh, pusing juga ya kalo baca teorinya doang. Lebih baik, aku langsung praktikkan saja cara untuk mengubah vector menjadi sebuah Dataframe, bisikku dalam hati.


# Instruksi :

# Buatlah sebuah vector bernama dq_universe yang berisi nama-nama anggota DQ Universe ("Kroma", "Andra", "Aksara", "Antara", "Senja", "Sunyi") secara berurutan
# Aplikasikan function as.data.frame pada vector dq_universe
# Jika telah berhasil dijalankan dengan , maka akan diperoleh output seperti berikut melalui Console


#Buatlah sebuah vector berisi nama-nama anggota DQ Universe
dq_universe <- c("Kroma", "Andra", "Aksara", "Antara", "Senja", "Sunyi")

#Aplikasikan as.data.frame() untuk vector dq_universe
df <- as.data.frame(dq_universe)

#cek apakah variable df merupakan Dataframe
is.data.frame(df)