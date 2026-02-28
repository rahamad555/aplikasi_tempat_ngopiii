# Mini-Project-1-Pemrograman-Aplikasi-Bergerak
Rahmad Ramadhan | 2409116018 | Sistem Informasi A 2024


🧾 Deskripsi Aplikasi

Aplikasi Tempat Ngopi adalah aplikasi mobile berbasis Flutter yang digunakan untuk mencatat dan mengelola data tempat ngopi seperti nama tempat, lokasi, dan catatan. Aplikasi ini dirancang dengan tampilan modern dan sederhana agar mudah digunakan.

Pengguna dapat menambahkan data tempat ngopi baru, melihat daftar tempat yang telah disimpan, mengedit data, serta menghapus data sesuai kebutuhan. Aplikasi ini dibuat untuk memenuhi tugas pembuatan aplikasi mobile dengan penerapan fitur dasar CRUD (Create, Read, Delete) serta fitur Update sebagai nilai tambah.



🚀 Fitur Aplikasi

Aplikasi ini memiliki fitur sebagai berikut:

➕ Create (Tambah Data)
Menambahkan data tempat ngopi melalui form input.

📋 Read (Tampilkan Data)
Menampilkan daftar tempat ngopi dalam bentuk ListView.

✏️ Update (Edit Data)
Mengubah data tempat ngopi yang sudah ada.

🗑️ Delete (Hapus Data)
Menghapus data tempat ngopi dari daftar.



Widget yang Digunakan

MaterialApp

Scaffold

Container

Column

Row

Text

TextField

ListView

ListTile

Icon

IconButton

ElevatedButton

FloatingActionButton

Navigator

Padding

SizedBox






👥 Pengguna Target

Aplikasi ini ditujukan untuk:

Mahasiswa

Pelajar

Pekerja

Pengguna umum yang ingin mencatat tempat ngopi favorit

Aplikasi ini cocok digunakan oleh siapa saja yang ingin menyimpan dan mengelola daftar tempat ngopi dengan mudah.







🛠️ Teknologi yang Digunakan

Aplikasi ini dikembangkan menggunakan:

Flutter 

Dart 

Visual Studio Code sebagai code


# Tampilan Awal


<img width="1299" height="1016" alt="image" src="https://github.com/user-attachments/assets/d29d361b-16a1-418c-b80f-ba2db798b8b0" />




Halaman awal aplikasi menampilkan judul Tempat Ngopi pada bagian header dengan gradasi warna coklat. Di tengah layar terdapat informasi bahwa belum ada data tempat ngopi, serta tombol tambah (+) di kanan bawah yang digunakan untuk menambahkan tempat mgopi.




# Tampilan Halaman Tambah Tempat ngopi


<img width="1297" height="1003" alt="image" src="https://github.com/user-attachments/assets/244b244e-cc46-4703-b6f9-7a7fad642421" />





Ketika tombol tambah (+) ditekan, aplikasi menampilkan halaman Tambah Tempat Ngopi yang berisi tiga kolom input yaitu nama tempat,lokasi dan catatan . Admin dapat mengisi data tersebut lalu menekan tombol Simpan untuk menambahkan data tempat ngopi ke daftar pada halaman utama.






<img width="1289" height="994" alt="image" src="https://github.com/user-attachments/assets/bcadb697-9fa7-412b-95ae-00adc8cb5df9" />



Contoh user menginput data, setelah itu klik simpan.


# Tampilan Halaman Awal




<img width="1292" height="1002" alt="image" src="https://github.com/user-attachments/assets/4d347117-904c-4827-86d2-48038af73896" />





Setelah tombol Simpan ditekan, data tempat ngopi tersimpan dan aplikasi kembali ke halaman utama. Data yang baru ditambahkan langsung muncul pada daftar tempat ngopi lengkap dengan informasi alamat,catatan dan tombol hapus dan edit untuk mengelola data.


# Tampilan Akhir




<img width="1292" height="1007" alt="image" src="https://github.com/user-attachments/assets/46001aae-d172-46cc-989e-7aa48abc3a27" />






Untuk tampilan akhirnya, setelah user menghapus seluruh data yang tersimpan, halaman utama aplikasi kembali menampilkan kondisi awal tanpa data. Halaman utama kembali menampilkan pesan “Belum ada tempat ngopi” yang menandakan tidak ada data tersimpan. Tombol tambah (+) tetap tersedia sehingga user dapat menambahkan data  baru kembali.
