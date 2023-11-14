import 'package:flutter/material.dart';
import 'package:kelontong/widgets/left_drawer.dart';
import 'package:kelontong/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<Tombol> items = [
    Tombol("Lihat Item", Icons.checklist, Colors.blue),
    Tombol("Tambah Item", Icons.add_shopping_cart, Colors.green),
    Tombol("Logout", Icons.logout, Colors.grey),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor :  const Color.fromRGBO(189, 147, 89, 1.0),
        title: const Text(
          'Kelontong',
          style: TextStyle(color: Colors.white),
        ),
      ),
      // Menampilkan drawer
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan
                child: Text(
                  'Kelontong Shop', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container card
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((Tombol item) {
                  // Iterasi untuk tiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      // Mengubah warna background untuk halaman utama 
      backgroundColor:  const Color.fromRGBO(237, 222, 173, 1.0),
    );
  }
}

