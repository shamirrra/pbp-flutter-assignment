__Nama: Shamira Alifanindya Prasetya__

__NPM: 2106636376__

__Kelas: PBP-A__

<hr>

# Tugas 9
Mata kuliah Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

# Deskripsi Tugas
Mengintegrasikan aplikasi _mywatchlist_ pada tugas 3 Django ke Flutter.

# Jawaban
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, pengambilan data JSON tanpa membuat model dapat dilakukan. JSON merupakan _object_ yang terdiri dari pasangan _key_ dan _value_. Pada bahasa pemrograman Dart, JSON serupa dengan Map. Pengambilan data tanpa membuat model tidak terlalu disarankan karena dengan adanya model dapat mengurangi kesalahan pengambilan atau pengiriman data melalui http request.


## Widget yang digunakan dalam tugas ini beserta fungsinya

* `MaterialApp`, berfungsi untuk menerapkan material desain sebagai pondasi dari aplikasi.
* `Scaffold`, berfungsi untuk memberikan tema dan struktur (_layout_) material dasar dari tampilan aplikasi.
* `AppBar`, berfungsi untuk menampilkan penunjuk atau navigasi dari konten-konten yang ada dalam aplikasi.
* `Text`, berfungsi untuk menampilkan teks dan dapat memodifikasi _style_ dari teks yang ingin ditampilkan.
* `Center`, berfungsi untuk mengatur tampilan _children widget_ di bagian tengah window.
* `Column`, berfungsi untuk mengatur tampilan _children widget_ dalam bentuk kolom atau secara vertikal.
* `Row`, berfungsi untuk mengatur tampilan _children widget_ dalam bentuk baris atau secara horizontal.
* `Container`, _widget build-in_ berupa _button_ yang berfungsi sebagai _trigger_ suatu aksi.
* `Drawer`, widget untuk drawer material design.
* `Navigator`, untuk menavigasikan ke halaman tujuan dengan konsep stack.
* `TextEditingController`, sebagai controller text field agar dapat diedit.
* `Form`, sebagai container untuk form field.
* `DropdownButtonFormField`, membuat widget drop down button.
* `SizedBox`, membuat fixed sized box.
* `FutureBuilder`
* `GestureDetector`


## Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter

* Membuat fungsi http request dengan method `GET` secara asinkronus
* Melakukan parsing `jsonDecode()` yang akan mengubah response type dari string ke JSON
* Mengubah object JSON ke sebuah object model
* Menggunakan _widget_ `FutureBuilder` yang akan menampilkan _widgets_ data yang telah menjadi object


## Cara implementasi checklist

* Membuat dua file baru, yaitu watchList dan watchListDetail
* Membuat file `budgetList.dart` yang mengambil data budget dari list pada form dan menampilkan daftar budget dalam bentuk cards.
* Membuat file `drawer.dart` untuk drawer menu yang berisi navigasi ke laman counter_7, laman form menambahkan budget, dan laman tampilan daftar budget.
* Melakukan import file `drawer.dart` ke file `main.dart`, `budgetForm.dart`, dan `budgetList.dart`.
* Melakukan git add, commit, dan push ke dalam repositori GitHub.