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


# TUGAS 8

### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Jawab:
- `Navigator.push()`: digunakan untuk menavigasi menuju halaman baru dan menambahkannya ke tumpukan halaman (stack). Pada metode ini, halaman sebelumnya tetap ada di tumpukan dan dapat kembali (back) ke halaman sebelumnya dengan tombol kembali/`Navigator.pop()`. Contoh penggunaan yaitu pada tugas 8 saya:
```
// Menambah navigasi pada tombol Tambah Item menuju halaman form (Pada file shop_card.dart)
if (item.name == "Tambah Item") {
     Navigator.push(
          context,
          MaterialPageRoute(
               builder: (context) => const ShopFormPage(),
          )
     );
}
```
- `Navigator.pushReplacement()`: digunakan untuk menavigasi ke jalaman baru juga, namun pada metode ini halaman yang dituju akan menggantikan halaman saat ini. Pada metode ini, tidak dapat kembali ke halaman sebelumnya dengan tombol kembali/`Navigator.pop()`. Contoh penggunaan yaitu pada tugas 8 saya:
```
// Redirection ke MyHomePage (Pada file left_drawer.dart)
onTap: () {
     Navigator.pushReplacement(
          context,
          MaterialPageRoute(
               builder: (context) => MyHomePage(),
          )
     );
},
```

### 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Jawab:
- Column: menyusun daftar child widget secara vertikal. Menata letak widget jika ingin ditempatkan pada 1 column yang sama.
- Container: menggabungkan/menampung beberapa widget. Memungkinkan untuk melakukan kustomisasi seperti background color.
- ListView: membuat daftar widget menjadi scrollable.
- Center: menyesuaikan posisi child di tengah.
- Row: menyusun daftar child widget secara horizontal. Menata letak widget jika ingin ditempatkan pada 1 row yang sama.
- Stack: menyusun children secara bertumpuk. Digunakan jika ingin menumpuk (stack) beberapa child.
- Expanded: berfungsi untuk mengontrol agar widget mengisi ruang sebanyak mungkin. Merupakan widget yang memperluas child dari Row, Column, atau Flex.
- Padding: memberikan padding pada childnya.
- GridView: menempatkan children dalam grid/daftar grid yang diatur secara vertikal dan horizontal. Dapat digunakan untuk mengatur letak/menyusun card. 
- Flexible: mengontrol bagaimana child dari widget flex seperti Row, Column, dan Flex akan mengisi ruang yang tersedia.
- Wrap: menampilkan childnya dalam beberapa baris vertikal atau horizontal. Jika ruangnya tidak cukup maka widget akan berpindah ke baris atau kolom berikutnya.
- Align: widget yang menyesuaikan posisi child di dalam dirinya.

### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Jawab:
Pada tugas kali ini, saya membuat 4 elemen input dalam Form. 
- `Nama Item` menggunakan widget TextFormField untuk menerima input 'Nama Item' dari pengguna. Saya juga menggunakan validator untuk memastikan bahwa pengguna memasukkan nama item dan field ini tidak boleh kosong.
- `Harga` menggunakan widget TextFormField untuk menerima input 'Harga' dari pengguna. Saya juga menggunakan validator untuk memastikan bahwa pengguna memasukkan harga berupa angka dan field ini tidak boleh kosong.
- `Amount` menggunakan widget TextFormField untuk menerima input 'Amount' dari pengguna. Saya juga menggunakan validator untuk memastikan bahwa pengguna memasukkan amount berupa angka dan field ini tidak boleh kosong.
- `Deskripsi` menggunakan widget TextFormField untuk menerima input 'Deskripsi' dari pengguna. Saya juga menggunakan validator untuk memastikan bahwa pengguna memasukkan deksripsi dan field ini tidak boleh kosong.

* Selain itu, saya membuat tombol `Save` menggunakan ElevatedButton sebagai elemen input untuk mengirimkan form. Ketika tombol `Save` ditekan maka akan melakukan validasi form, jika valid maka akan menampilkan pop up berisi detail item. Jika tidak valid, maka pop up tidak ditampilkan. 

### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Jawab:
Clean architecture merupakan prinsip desain perangkat lunak yang memisahkan kode menjadi beberapa lapisan dengan tujuan dan tanggung jawab yang berbeda. Tujuannya yaitu untuk menciptakan basis kode yang modular, dapat diskalakan, dan dapat diuji (separation of concern). Lapisan pada clean architecture yaitu domain layer, application layer, infrastructure layer, presentation layer, feature layer, dan resources dan shared library layers. Pemisahan tujuan dan tanggung jawab dapat memudahkan proses pengembangan aplikasi.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
Jawab:
- Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru 
   * Membuat file `shoplist_form.dart` yang berisikan kode untuk membuat form yang menerima input nama item, harga, amount, dan deskripsi.
     - Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat. 
        * Saya menggunakan 4 atribut dan tiap atribut dibungkus pada widget Padding() yang berbeda dan tiap elemen input menggunakan TextFormField(). Saya juga mengecek validasi dari tiap input yang dimasukkan pengguna ke tiap field.
        ```
          // Variabel untuk menyimpan input dari tiap field
          String _name = "";
          int _price = 0;
          int _amount = 0;
          String _description = "";
        ```
     - Memiliki sebuah tombol Save.
        * Membuat tombol menggunakan ElevatedButton() yang berada di dalam widget Align()
        ```
          Align(
               alignment: Alignment.bottomCenter,
               child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                         ......
                    )
               )
          )
        ```
        * Menggunakan onPressed() untuk melakukan aksi ketika tombol diklik. Ketika tombol di klik akan dilakukan pengecekan apakah form sudah valid. Jika valid, maka akan muncul pop up yang menampilkan detail item yang diinput
     - Setiap elemen input di formulir juga harus divalidasi dengan ketentuan
          * Menggunakan validator di tiap TextFormField()
          ```
          validator: (String? value) {
               ....
          }
          ```
          Jika input tidak sesuai ketentuan, maka akan meminta input kembali (field menjadi kosong dan ada peringatan pada field bahwa field harus diisi sesuai ketentuan)
          * Memastikan input tidak kosong
          ```
          validator: (String? value) {
               if (value == null || value.isEmpty) {
                    ....
               }
               ....
          }
          ```
          * Memastikan input berisikan data dengan tipe data atribut model.
          => Jika tipe data int
          ```
          validator: (String? value) {
               ....
               if (int.tryParse(value) == null) {
                    ....
               }
               return null;
          },
          ```
          => Jika tipe data String hanya perlu memastikan field tidak kosong

- Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
   * Saya menggunakan `Navigator.push()` untuk redirect ke halaman form. Saya menambahkan kode untuk navigasi tersebut pada `shop_card.dart`
     ```
     // Menambah navigasi pada tombol Tambah Item
     if (item.name == "Tambah Item") {
          Navigator.push(
               context,
               MaterialPageRoute(
                    builder: (context) => const ShopFormPage(),
               )
          );
     }
     ```
     Saya juga meng-impor `shop_card.dart` pada `menu.dart`

- Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
   * Menggunakan onPressed() untuk melakukan aksi ketika tombol di klik, lalu form akan divalidasi. Jika sudah sesuai, maka akan muncul pop up. Saya menggunakan `showDialog()` dan `AlertDialog()`
     ```
               onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: const Color.fromRGBO(237, 222, 173, 1.0),
                            title: const Text('Item berhasil disimpan'),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nama: $_name'),
                                  Text('Harga: $_price'),
                                  Text('Amount: $_amount'),
                                  Text('Deskripsi: $_description'),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                      _formKey.currentState!.reset();
                    }
                  },
     ```

- Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
   * Membuat file `left_drawer.dart`
     - Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
        * Menambahkan widget yaitu `ListTile()` untuk dua opsi yaitu Halaman Utama dan Tambah Item
        ```
          ListTile(
               leading: const Icon(Icons.home_outlined),
               title: const Text('Halaman Utama'),
               ....
          )

          ListTile(
               leading: const Icon(Icons.home_outlined),
               title: const Text('Tambah Item'),
               ....
          )
        ```
     - Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
        * Membuat routing dengan menggunakan `Navigator.pushReplacement()` dan mengarahkan ke `MyHomePage()`
        ```
        ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              // Redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  )
                );
              },
            ),
        ```
     - Ketika memiih opsi Tambah Item, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru
        * Membuat routing dengan menggunakan `Navigator.push()` dan mengarahkan ke `ShopFormPage()`
        ```
        ListTile(
              leading: const Icon(Icons.add_shopping_cart),
              title: const Text('Tambah Item'),
              // Redirection ke ShopFormPage
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  )
                );
              },
            ),
        ```


# TUGAS 9        
### 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, bisa saja melakukan pengambilan data JSON tanpa membuat model terlebih dahulu seperti dengan menyimpan data di dalam map. Namun, hal tersebut tidak lebih baik daripada membuat model sebelum melakukan pengambilan data JSON karena lebih rumit. Jika ada kesalahan akan lebih mudah ditemukan jika menggunakan model dan dengan model kita dapat mengakses data menggunakan properti dari objek (menggunakan model lebih mudah digunakan). shoplist_form

### 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest merupakan kelas yang bertugas mengelola permintaan HTTP dan cookie yang terkait dengan request. CookieRequest dilengkapi dengan berbagai metode yaitu untuk melakukan operasi login, get, logout, dan post. Oleh karena itu, kelas ini memfasilitasi interaksi otentikasi dengan server melalui permintaan HTTP. Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter untuk memastikan konsistensi data pengguna di seluruh aplikasi. Misal, instance CookieRequest dibagikan ke semua komponen melalui Provider dan diakses di ShopFormPage dengan `context.watch<CookieRequest>()`. Hal tersebut memungkinkan komponen tersebut untuk melakukn HTTP POST ke server dan mengirimkan data item saat button "Save" ditekan.

### 3.  Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
- Pada fungsi fetchItem (bisa dilihat di list_item.dart) akan dibuat permintaan HTTP GET ke URL yang telah ditentukan dan dilakukan secara asinkron menggunakan `http.get`.
```
 Future<List<Item>> fetchItem() async {
  var url = Uri.parse(
        // 'http://rena-martha-tugas.pbp.cs.ui.ac.id/auth/login/'
        'http://localhost:8000/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );
    ....
 }
```
- Respons dari server kan di decode menjadi bentuk JSON menggunakan `jsonDecode`
```
// melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));
```
- Data dalam bentuk JSON tersebut di convert menjadi objek Item menggunakan method `fromJson` 
```
....
// melakukan konversi data json menjadi object Item
    List<Item> list_Item = [];
    for (var d in data) {
      if (d != null) {
        list_Item.add(Item.fromJson(d));
      }
    }
    return list_Item;
....
```
- Pada method build, `FutureBuilder` digunakan untuk menunggu fetchItem selesai. 

### 4.  Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Pengguna akan diminta memasukkan username dan password melalui TextField (bisa dilihat pada login.dart)
```
...
 TextField(
    controller: _usernameController,
    decoration: const InputDecoration(
        labelText: 'Username',
    ),
  ),
  const SizedBox(height: 12.0),
  TextField(
    controller: _passwordController,
    decoration: const InputDecoration(
        labelText: 'Password',
    ),
    obscureText: true,
  ),
...
```
- Aplikasi akan membuat permintaan HTTP POST ke endpoint login di Django menggunakan `CookieRequest`. Data yang diinput pengguna (username dan password) dikirim sebagai bagian dari body request. 
```
...
onPressed: () async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    final response = await request.login(
      // 'http://rena-martha-tugas.pbp.cs.ui.ac.id/auth/login/',
    'http://localhost:8000/auth/login/', {
    'username': username,
    'password': password,
    });
    .....
}
```
- Django memproses request login dan melakukan pengecekan apakah username dan password valid, lalu mengirimkan respons. Respons akan diterima oleh aplikasi Flutter dan Flutter diperiksa. Jika login sukses, maka aplikasi akan navigasi ke `MyHomePage`. Jika gagal, aplikasi akan menampilkan pesan kesalahan.

### 5.  Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- TextField : menerima input teks dari pengguna
- SizedBox :  memberikan jarak antara dua widget
- AlertDialog : menampilkan peringatan atau pesan ke pengguna
- FloatingActionButton : menampilkan tombol aksi yang mengambang, pada tugas ini digunakan untuk tombol kembali dari halaman yang menampilkan detail item
- Provider : digunakan untuk menyediakan instance CookieRequest ke widget lain
- LoginPage : menampilkan halaman login
- ItemPage : menampilkan halaman berisi daftar item
- ScaffoldMessenger : menampilkan SnackBar

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
- Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
- Membuat halaman login pada proyek tugas Flutter.
  - Install package Flutter dengan `flutter pub add provider` dan  `flutter pub add pbp_django_auth`
  - Modifikasi MyApp untuk menyediakan library `CookieRequest` ke tiap child widgets dengan menggunakan `Provider`
  ```
  ...
  class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
          title: 'Flutter App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
            useMaterial3: true,
          ),
          home: LoginPage()),
    );
  }
  ...
  }
  ```
  - Membuat file login.dart di direktori screen
  - Mengubah konfigurasi home di file main.dart menjadi  `home: LoginPage()`
  - Mengimplementasikan logout menambahkan kode pada shop_card.dart
  ```
  else if (item.name == "Logout") {
    final response = await request.logout(
        // 'http://rena-martha-tugas.pbp.cs.ui.ac.id/auth/login/'
        "http://localhost:8000/auth/logout/");
    String message = response["message"];
    if (response['status']) {
      String uname = response["username"];
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("$message Sampai jumpa, $uname."),
      ));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("$message"),
      ));
    }
  }
  ```

- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
  - Membuat django-app baru pada proyek sebelumnya bernama authentication dan ditambahkan ke  INSTALLED_APPS di settings.py
  - Melakukan instalasi django-cors-headers dan menambahkannya ke INSTALLED_APPS dan requirements.txt, menambahkan `corsheaders.middleware.CorsMiddleware` ke MIDDLEWARE di settings.py dan menambahkan beberapa konfigurasi:
  ```
  CORS_ALLOW_ALL_ORIGINS = True
  CORS_ALLOW_CREDENTIALS = True
  CSRF_COOKIE_SECURE = True
  SESSION_COOKIE_SECURE = True
  CSRF_COOKIE_SAMESITE = 'None'
  SESSION_COOKIE_SAMESITE = 'None'
  ```
  - Membuat method login dan logout pada authentication/views.py dan menambahkan URL routing di authentication/urls.py
  - Menambahkan path('auth/', include('authentication.urls')), pada kelontong/urls.py

- Membuat model kustom sesuai dengan proyek aplikasi Django.
  - Memanfaatkan Quicktype untuk membuat model dengan data JSON
  - Membuat file baru item.dart pada lib/models dan diisi dengan kode dari Quicktype

- Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
  - Menjalankan perintah `flutter pub add http` dan menambahkan package  `http`
  - Menambahkan `<uses-permission android:name="android.permission.INTERNET" />` pada `android/app/src/main/AndroidManifest.xml`
  - Membuat file baru list_item.dart
  - Menambahkan halaman list_item.dart ke widgets/left_drawer.dart dan shop_card.dart

-  Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
  - Membuat file baru detail_page.dart pada direktori lib/screens dan diisi kode seperti yang ada file tersebut.
  - Melakukan import halaman DetailPage ke list_item.dart dan modifikasi dengan menambahkan onTap pada tiap item.


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
