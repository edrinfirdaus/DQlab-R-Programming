# Untuk mengambil nilai-nilai index integer pada factor, kita bisa menggunakan function as.integer dengan syntax berikut.

# as.integer(variable factor)
# Mari kita langsung praktekkan dengan tugas berikut.

# Tugas Praktek

# Pada code editor, ganti bagian […] dengan function as.integer dan dengan input variable factor.bulan.

#Buatlah factor dengan teks "Jan", "Feb", "Mar","Jan","Mar", dan "Jan"
factor.bulan <- factor(c("Jan","Feb","Mar","Jan","Mar","Jan"))
as.integer(factor.bulan)