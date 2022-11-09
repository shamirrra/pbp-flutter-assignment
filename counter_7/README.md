## PBP TUGAS 7 ##
Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

## Deskripsi Tugas
Mengimplementasikan konsep beberapa elemen dasar pada Flutter.


__Nama: Shamira Alifanindya Prasetya__

__NPM: 2106636376__

__Kelas: PBP-A__


## Jawaban
__Perbedaan stateless widget dan stateful widget__
<hr>

_Stateless widget_ adalah _widget_ yang bersifat statis, tidak memiliki _state_ apapun, dan tidak dapat diubah setelah diinisiasikan. _Stateless widget_ dapat diubah melalui _external events_ pada _parent widget_-nya. _Stateful widget_ adalah _widget_ yang bersifat dinamis, dapat berubah sesuai _state_ atau dapat memperbarui tampilan, dan bersifat _immutable_. _Stateful widget_ memiliki _company state class_ yang merepresentasikan _current state_ yang berlaku.

__Widget yang digunakan dalam tugas ini beserta fungsinya__
<hr>

* `MaterialApp`, berfungsi untuk menerapkan material desain sebagai pondasi dari aplikasi.
* `Scaffold`, berfungsi untuk memberikan tema dan struktur (_layout_) material dasar dari tampilan aplikasi.
* `AppBar`, berfungsi untuk menampilkan penunjuk atau navigasi dari konten-konten yang ada dalam aplikasi.
* `Text`, berfungsi untuk menampilkan teks dan dapat memodifikasi _style_ dari teks yang ingin ditampilkan.
* `Center`, berfungsi untuk mengatur tampilan _children widget_ di bagian tengah window.
* `Column`, berfungsi untuk mengatur tampilan _children widget_ dalam bentuk kolom atau secara vertikal.
* `Row`, berfungsi untuk mengatur tampilan _children widget_ dalam bentuk baris atau secara horizontal.
* `FloatingActionButton`, _widget build-in_ berupa _button_ yang berfungsi sebagai _trigger_ suatu aksi.


__Fungsi `setState()?` dan variabel yang terdampak fungsi tersebut__
<hr>

Fungsi `setState()` memiliki fungsi untuk men-_trigger_ sebuah _stateful widget_ bahwa telah terjadi perubahan atau perbaharuan objek pada _state_. Aplikasi akan melakukan _rebuild_ pada _widget_ tersebut. `setState()` hanya dapat digunakan pada _stateful widget_. Variabel yang terdampak fungsi `setState()` pada tugas ini adalah variabel `_counter`. Aplikasi akan memperbarui tampilan `_counter` dan menghilangkan _decrement button_ ketika state `_counter` bernilai lebih dari nol.

__Perbedaan antara const dengan final__
<hr>

`const` dan `final` dapat digunakan untuk menginisiasi variabel yang bersifat _immutable_. Pada `const`, nilai pada variabel harus diinisiasikan secara langsung atau eksplisit sehingga ketika program dalam tahap kompilasi, variabel `const` sudah memiliki nilai. Pada `final`, variabel tidak diharuskan untuk diinisiasikan nilainya secara eksplisit ketika tahap kompilasi.

__Cara implementasi checklist__
<hr>

* Membuat aplikasi baru bernama counter_7 dengan perintah `flutter create counter_7` pada command prompt.
* Pada file `main.dart` membuat fungsi baru dengan nama `_decrement` untuk mengubah (mengurangi angka sebanyak satu satuan) state dari variabel `_counter`.
* Menambahkan `FloatingActionButton` baru untuk men-_trigger_ fungsi `_decrement`.
* Mengubah _display text_ agar sesuai dengan _requirements_ dari tugas ini.
* Melakukan git init, add, commit, dan push ke dalam repositori GitHub.