import 'package:flutter/material.dart';
import 'package:ucp1/pages/haltiga.dart';
import 'package:ucp1/widgets/footer_widgets.dart';
import 'package:ucp1/widgets/pesanan_widgets.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key, required this.nama, required this.nohp});

  final String nama;
  final String nohp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Makanan Warmindo",
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Nama : $nama"),
              Text("No Telp : $nohp"),
              Pesanan(),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HalamanTiga(),
                      ),
                    );
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
