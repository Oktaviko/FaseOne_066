import 'package:flutter/material.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key, required this.makanan, required this.minuman, required this.desert});

  
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
            Text("Nama")
          ],
        ),
      ),
    );
  }
}