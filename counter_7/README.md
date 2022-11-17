__Nama: Shamira Alifanindya Prasetya__

__NPM: 2106636376__

__Kelas: PBP-A__

<hr>

# Tugas 8
Mata kuliah Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

# Deskripsi Tugas
Membuat aplikasi _budget tracking app_ sederhana.

# Jawaban
## Perbedaan `Navigator.push` dan `Navigator.pushReplacement`

_Class_ `Navigator` digunakan untuk melakukan _routing_ pada aplikasi Flutter. _Class_ `Navigator` menggunakan konsep _stack_. `Navigator.push` adalah _method_ yang digunakan untuk berpindah ke halaman lain dengan menumpuknya ke paling atas. `Navigator.pushReplacement` memiliki konsep yang sama, tetapi akan mengganti _routing_ paling atas dengan yang baru. Perbedaannya adalah pada `push` hanya akan menumpuk dan tidak menghapus. Sementara pada `pushReplacement` akan menghapus _routing_ paling atas dan menggantinya dengan yang baru.


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


## Jenis-jenis _event_ yang ada pada Flutter

* `onPressed`
* `onSaved`
* `onRefresh`
* `onLongPress`
* `onHover`
* `onTap`
* `onSubmitted`
* `onDoubleTap`
* `onFocusChange`
* `onPointerMove`


## Cara kerja `Navigator` dalam "mengganti" halaman pada aplikasi Flutter

_Widget_ `Navigator` menggunakan konsep stack, last in first out (LIFO). Elemen paling atas menunjukkan halaman yang sedang muncul pada aplikasi. Setelah mendefinisikan _route_ (tujuan ke halaman baru), `navigator` menggunakan method seperti `pop`, `push`, atau sebagainya untuk menavigasikan aplikasi ke halaman _routing_.


## Cara implementasi checklist

* Membuat file `budgetForm.dart` berisi class model untuk budget (judul, nominal, jenis, dan tanggal) dan form fields: `TextFormField` untuk judul dan nominal budget; `DropownButtonFormField` untuk jenis budget; dan `showDatePicker` untuk tanggal.
* Membuat file `budgetList.dart` yang mengambil data budget dari list pada form dan menampilkan daftar budget dalam bentuk cards.
* Membuat file `drawer.dart` untuk drawer menu yang berisi navigasi ke laman counter_7, laman form menambahkan budget, dan laman tampilan daftar budget.
* Melakukan import file `drawer.dart` ke file `main.dart`, `budgetForm.dart`, dan `budgetList.dart`.
* Melakukan git add, commit, dan push ke dalam repositori GitHub.