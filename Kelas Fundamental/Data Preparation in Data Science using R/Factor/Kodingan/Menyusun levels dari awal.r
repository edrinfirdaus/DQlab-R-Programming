# Sejauh ini factor yang kita buat seakan-akan hanya bisa dirubah isinya, namun bukan urutannya. Ini kita bisa kendalikan juga dengan memberikan nilai-nilai kategori sesuai urutan yang kita inginkan pada argumen levels di function factors.

# factor(…, levels = …)
# Sebagai contoh, agar levels bernilai urut dari "Jan" s/d "Mar" maka pada saat membuat factor kita harus sisipkan argumen labels sebagai berikut:

# factor(…, levels = c("Jan","Feb","Mar")
# Cobalah perhatikan contoh ilustrasi dari dua pembuatan factor, dengan dan tanpa argumen levels.


 

# Tugas Praktek

# Pada code editor, terdapat satu variable factor.lokasi, tambahkan argumen labels pada bagian […] sehingga urutan labels menjadi "Jan","Feb","Mar".

# Jika semua berjalan dengan lancar, maka akan muncul hasil sebagai berikut.

# [1] Jan Feb Mar Jan Mar
# Levels: Jan Feb Mar


#Variable factor dengan isi vector c("Jan","Feb","Mar","Jan","Mar") 
factor(c("Jan","Feb","Mar","Jan","Mar"), levels = c("Jan","Feb","Mar"))