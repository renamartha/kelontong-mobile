import 'package:flutter/material.dart';
import 'package:kelontong/screens/list_item.dart';
import 'package:kelontong/screens/menu.dart';
import 'package:kelontong/screens/shoplist_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Mengubah warna background drawer 
      child: Container( 
        color: const Color.fromRGBO(237, 222, 173, 1.0),
        child: ListView(
          children: [
            // Drawer Header
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(189, 147, 89, 1.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Kelontong',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),

            // Routing
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

            ListTile(
              leading: const Icon(Icons.add_shopping_cart),
              title: const Text('Tambah Item'),
              // Redirection ke ShopFormPage
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  )
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text('Daftar Item'),
              onTap: () {
                  // Route menu ke halaman produk
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ItemPage()),
                  );
              },
            ),
          ],
        ),
      )
    );
  }
}