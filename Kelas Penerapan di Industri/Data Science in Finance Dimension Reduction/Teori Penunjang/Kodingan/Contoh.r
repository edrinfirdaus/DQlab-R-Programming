# Hitung nilai eigen dan cari vektor eigen dari matriks

# Jawaban
# Nilai eigen dari matriks A adalah determinan dari matriks (A − λI).

# Untuk nilai eigen λ = 2, vektor eigen diperoleh dari solusi sistem persamaan linier (A − 2I) = .

# Untuk nilai eigen λ = 1, vektor eigen  diperoleh dari solusi sistem persamaan linier (A−1 · I) = .

# Untuk nilai eigen λ = −1, vektor eigen diperoleh dari solusi sistem persamaan linier (A−(−1)·I) = .


# Menghitung nilai eigen dan vektor eigen secara manual tentu akan sulit untuk matriks berdimensi besar. R memiliki fungsi eigen dari package base untuk menghitung nilai eigen dan vektor eigen. R akan secara otomatis mengurutkan nilai eigen dari yang berbesar sampai dengan yang terkecil. 

# Anda hanya perlu run dan submit kode di bawah ini.


(A <- as.matrix(data.frame(c(1,0,1),c(0,1,1),c(1,1,0))))
e <- eigen(A)
str(e)
e