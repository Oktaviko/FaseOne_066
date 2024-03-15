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
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var desert = TextEditingController();
    var formKey = GlobalKey<FormState>();
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
              Pesanan(
                  formKey: formKey,
                  etMakanan: makanan,
                  etMinuman: minuman,
                  etDesert: desert),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HalamanTiga(
                                  makanan: makanan.text,
                                  minuman: minuman.text,
                                  desert: desert.text,
                                  nama: nama,
                                  nohp: nohp)),
                          (route) => false);
                    }
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
