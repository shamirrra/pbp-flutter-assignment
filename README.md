__Nama: Shamira Alifanindya Prasetya__

__NPM: 2106636376__

__Kelas: PBP-A__

<hr>

# Flutter Assignments
Mata kuliah Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023.

## Assignment 7
Create counter app (increment and decrement number).

### README.MD for assigment 7
__Q1: Perbedaan stateless widget dan stateful widget__

__A:__
_Stateless widget_ adalah _widget_ yang bersifat statis, tidak memiliki _state_ apapun, dan tidak dapat diubah setelah diinisiasikan. _Stateless widget_ dapat diubah melalui _external events_ pada _parent widget_-nya. _Stateful widget_ adalah _widget_ yang bersifat dinamis, dapat berubah sesuai _state_ atau dapat memperbarui tampilan, dan bersifat _immutable_. _Stateful widget_ memiliki _company state class_ yang merepresentasikan _current state_ yang berlaku.


__Q2: Widget yang digunakan dalam tugas ini beserta fungsinya__

__A:__
* `MaterialApp`, berfungsi untuk menerapkan material desain sebagai pondasi dari aplikasi.
* `Scaffold`, berfungsi untuk memberikan tema dan struktur (_layout_) material dasar dari tampilan aplikasi.
* `AppBar`, berfungsi untuk menampilkan penunjuk atau navigasi dari konten-konten yang ada dalam aplikasi.
* `Text`, berfungsi untuk menampilkan teks dan dapat memodifikasi _style_ dari teks yang ingin ditampilkan.
* `Center`, berfungsi untuk mengatur tampilan _children widget_ di bagian tengah window.
* `Column`, berfungsi untuk mengatur tampilan _children widget_ dalam bentuk kolom atau secara vertikal.
* `Row`, berfungsi untuk mengatur tampilan _children widget_ dalam bentuk baris atau secara horizontal.
* `FloatingActionButton`, _widget build-in_ berupa _button_ yang berfungsi sebagai _trigger_ suatu aksi.


__Q3: Fungsi `setState()` dan variabel yang terdampak fungsi tersebut__

__A:__
Fungsi `setState()` memiliki fungsi untuk men-_trigger_ sebuah _stateful widget_ bahwa telah terjadi perubahan atau perbaharuan objek pada _state_. Aplikasi akan melakukan _rebuild_ pada _widget_ tersebut. `setState()` hanya dapat digunakan pada _stateful widget_. Variabel yang terdampak fungsi `setState()` pada tugas ini adalah variabel `_counter`. Aplikasi akan memperbarui tampilan `_counter` dan menghilangkan _decrement button_ ketika state `_counter` bernilai lebih dari nol.


__Q4: Perbedaan antara const dengan final__

__A:__
`const` dan `final` dapat digunakan untuk menginisiasi variabel yang bersifat _immutable_. Pada `const`, nilai pada variabel harus diinisiasikan secara langsung atau eksplisit sehingga ketika program dalam tahap kompilasi, variabel `const` sudah memiliki nilai. Pada `final`, variabel tidak diharuskan untuk diinisiasikan nilainya secara eksplisit ketika tahap kompilasi.


__Q5: Cara implementasi checklist__

__A:__
* Membuat aplikasi baru bernama counter_7 dengan perintah `flutter create counter_7` pada command prompt.
* Pada file `main.dart` membuat fungsi baru dengan nama `_decrement` untuk mengubah (mengurangi angka sebanyak satu satuan) state dari variabel `_counter`.
* Menambahkan `FloatingActionButton` baru untuk men-_trigger_ fungsi `_decrement`.
* Mengubah _display text_ agar sesuai dengan _requirements_ dari tugas ini.
* Melakukan git init, add, commit, dan push ke dalam repositori GitHub.


## Assignment 8
Add hamburger menu, implement form page, and show input data from form page in a new page.

### README.MD for assigment 8
__Q1: Perbedaan `Navigator.push` dan `Navigator.pushReplacement`__

__A:__
_Class_ `Navigator` digunakan untuk melakukan _routing_ pada aplikasi Flutter. _Class_ `Navigator` menggunakan konsep _stack_. `Navigator.push` adalah _method_ yang digunakan untuk berpindah ke halaman lain dengan menumpuknya ke paling atas. `Navigator.pushReplacement` memiliki konsep yang sama, tetapi akan mengganti _routing_ paling atas dengan yang baru. Perbedaannya adalah pada `push` hanya akan menumpuk dan tidak menghapus. Sementara pada `pushReplacement` akan menghapus _routing_ paling atas dan menggantinya dengan yang baru.


__Q2: Widget yang digunakan dalam tugas ini beserta fungsinya__

__A:__
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


__Q3: Jenis-jenis _event_ yang ada pada Flutter__

__A:__
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


__Q4: Cara kerja `Navigator` dalam "mengganti" halaman pada aplikasi Flutter__

__A:__
_Widget_ `Navigator` menggunakan konsep stack, last in first out (LIFO). Elemen paling atas menunjukkan halaman yang sedang muncul pada aplikasi. Setelah mendefinisikan _route_ (tujuan ke halaman baru), `navigator` menggunakan method seperti `pop`, `push`, atau sebagainya untuk menavigasikan aplikasi ke halaman _routing_.


__Q5: Cara implementasi checklist__

__A:__
* Membuat file `budgetForm.dart` berisi class model untuk budget (judul, nominal, jenis, dan tanggal) dan form fields: `TextFormField` untuk judul dan nominal budget; `DropownButtonFormField` untuk jenis budget; dan `showDatePicker` untuk tanggal.
* Membuat file `budgetList.dart` yang mengambil data budget dari list pada form dan menampilkan daftar budget dalam bentuk cards.
* Membuat file `drawer.dart` untuk drawer menu yang berisi navigasi ke laman counter_7, laman form menambahkan budget, dan laman tampilan daftar budget.
* Melakukan import file `drawer.dart` ke file `main.dart`, `budgetForm.dart`, dan `budgetList.dart`.
* Melakukan git add, commit, dan push ke dalam repositori GitHub.
