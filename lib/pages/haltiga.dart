import 'package:flutter/material.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key, required this.makanan, required this.minuman, required this.desert, required this.nama, required this.nohp});

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
            Text("Nama : $nama")
          ],
        ),
      ),
    );
  }
}