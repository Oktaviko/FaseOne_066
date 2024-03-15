import 'package:flutter/material.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga(
      {super.key,
      required this.makanan,
      required this.minuman,
      required this.desert,
      required this.nama,
      required this.nohp});

  final String nama;
  final String nohp;
  final String makanan;
  final String minuman;
  final String desert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Form"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Nama : $nama",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "No Telp : $nohp",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Makanan : $makanan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Minuman : $minuman",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Desert : $desert",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
