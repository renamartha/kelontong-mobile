# TUGAS 7

### 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Jawab:
Stateless widget merupakan jenis widget yang tidak memiliki keadaan internal (tidak dapat berubah sepanjang waktu). Tampilan widget ini sepenuhnya ditentukan oleh argumen yang diberikan saat pembuatannya. Setelah widget ini dibuat, maka kita tidak dapat mengubahnya. Widget ini biasa digunakan untuk tampilan statis seperti teks.
Stateful widget merupakan jenis widget yang dapat berubah sepanjang waktu (bersifat dinamis). Widget ini menciptakan instance dari class State yang kemudian digunakan untuk membuat widget. Kondisi ini dapat berubah sepanjang waktu dan ketika hal tersebut terjadi, metode build akan dipanggil kembali untuk memperbarui perubahan.

### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Jawab:
- Scaffold: widget ini menyediakan struktur dasar aplikasi. Widget ini digunakan untuk menampilkan tampilan dasar/dasar halaman pada aplikasi flutter. 
- AppBar: widget ini digunakan untuk menentukan bilah aplikasi dan biasanya berada dibagian atas halaman. 
- SingleChildScrollView: widget ini memungkinkan isi halaman/konten discroll jika melewati ukuran layar. Pada widget ini, terdapat properti child yang menentukan widget yang bisa discroll.
- Padding: widget ini digunakan untuk memberi jarak antara widget dan tepi layar ataupun dengan widget lainnya. Pada widget ini juga terdapat properti child untuk menentukan widget mana yang akan diberi jarak.
- Text: widget yang digunakan untuk menampilkan string teks. Terdapat properti style untuk dapat mengubah font, warna, dan sebagainya.
- GridView: widget ini mampu menampilkan data dalam bentuk grid. Misalnya saja, kita dapat menentukan jumlah kolom dengan properti crossAxisCount dan widget akan ditampilkan dalam grid dengan properti children.
- Material: widget ini menampilkan efek design material seperti misalnya bayangan. Pada widget ini terdapat properti seperti child untuk menentukan widget yang akan diberi efek.
- InkWell: widget ini menangani respons sentuhan pengguna dan memberi efek visual. Pada widget ini terdapat properti seperti onTap untuk menentukan aksi saat terjadi sentuhan dan child untuk menentukan widget yang diberi efek sentuhan.
- SnackBar: widget ini digunakan untuk menampilkan pesan sementara/informasi yang dimunculkan pada bagian bawah layar. Pada widget ini terdapat properti seperti content yang menentukan teks mana yang akan ditampilkan pada pesan.
- Container: widget ini digunakan untuk menampilkan kotak yang bisa dikustomisasi. Pada widget ini terdapat properti seperti padding, child, dan color.
- Center: widget ini digunakan untuk menempatkan widget di tengah. Pada widget ini terdapat properti child untuk menentukan widget mana yang akan ditempatkan di tengah.
- Column: widget ini digunakan untuk menampilkan beberapa widget secara vertikal. Terdapat properti child untuk menentukan widget mana yang akan ditampilkan.
- Icon: widget ini digunakan untuk menampilkan icon. Pada widget ini terdapat properti seperti icon, color, dan size.

### 3.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Jawab:
- Pertama saya generate proyek flutter 'kelontong' dengan menjalankan perintah berikut pada direktori tempat saya ingin menyimpan proyek ini
`flutter create <APP_NAME>`
`cd <APP_NAME>` 
- Menjalankan proyek dengan perintah
`flutter run`
- Lalu muncul tampilan `Flutter Demo Home Page` yang menandakan proyek berhasil di generate
- Setelah proyek berhasil di generate, saya merapikan struktur proyek seperti pada tutorial. 
- Membuat file baru `menu.dart` pada direktori `kelontong/lib`
- Menambahkan import `import 'package:flutter/material.dart';` pada baris pertama di file `menu.dart`
- Memindahkan class MyHomePage sampai class _MyHomePageState dari file `main.dart` ke `menu.dart`
- Menambahkan import `import 'package:kelontong/menu.dart';` pada file `main.dart` 
- Mengubah kode pada `main.dart` bagian Material Color menjadi `colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),`
- Mengubah sifat widget menjadi stateless dengan mengubah kode pada file `main.dart` bagian home menjadi `home: MyHomePage(),`
- Mengubah sifat widget menjadi stateless pada file `menu.dart` yaitu dengan mengubah bagian `({super.key, required this.title})` menjadi `MyHomePage({Key? key}) : super(key: key);`, hapus `final String title` sampai bagian bawah class MyHomePage lalu menambahkan Widget build seperti yang sudah saya buat.
* Pada build di bagian appBar saya melakukan kustomisasi warna background serta menambahkan teks 'Kelontong'
* Lalu membuat tombol dalam bentuk card dengan layout grid. Membuat 3 card (Lihat Item, Tambah Item, dan Logout). Lalu saya juga melakukan kustomisasi warna background halaman dengan 
`backgroundColor: Color.fromRGBO(237, 222, 173, 1.0),`
* Membuat class Tombol dengan atribut teks, icon, dan warna background tombol.  Lalu membuat list tombol dibawah kode `MyHomePage({Key? key}) : super(key: key);` (ada tombol Lihat Item, Tambah Item, dan Logout). Lalu menambahkan body pada widget Scaffold seperti yang sudah saya buat.
* Membuat warna tiap tombol berbeda dengan menambahkan atribut color pada class Tombol dan menjadikannya sebagai argumen untuk constructor Tombol.



# kelontong

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
