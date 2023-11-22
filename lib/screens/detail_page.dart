import 'package:flutter/material.dart';
import 'package:kelontong/models/item.dart';

class DetailPage extends StatelessWidget {
  final Item item;

  const DetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 222, 173, 1.0),
      appBar: AppBar(
        title: const Text(
          'Detail Item',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(189, 147, 89, 1.0),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item.fields.name,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  'Harga      : ${item.fields.harga}',
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  'Jumlah     : ${item.fields.amount}',
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  'Deskripsi  : ${item.fields.description}',
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  'Tanggal    : ${item.fields.tanggal}',
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 15,
            child: FloatingActionButton(
              child: const Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
