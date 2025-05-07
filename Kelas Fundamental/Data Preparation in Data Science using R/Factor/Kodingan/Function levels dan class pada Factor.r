# Atribut levels dan class dapat juga dilihat dengan function levels dan class dengan input berupa factor, dengan konstruksi sebagai berikut:

# levels(variable)
# class(variable)
# Mari kita langsung lakukan praktek agar lebih jelas.

# Tugas Praktek

# Pada code editor, terdapat satu variable bernama faktor.bulan yang telah diisi dengan factor. Tampilkan levels dari variable dengan perintah yang menggantikan bagian […1…]. Kemudian menampilkan class dari variable dengan perintah yang menggantikan bagian […2…].

# Jika semua berjalan lancar, maka akan muncul dua hasil dari masing-masing perintah yang dimasukkan sebagai berikut.

# [1] "Feb" "Jan" "Mar"
# [1] "factor"

#Variable factor bernama faktor.bulan dengan nilai teks "Jan", "Feb", dan "Mar"
faktor.bulan <- factor(c("Jan","Feb","Mar"))
levels(faktor.bulan)
class(faktor.bulan)