import 'package:flutter/material.dart';

class FormWidgets extends StatefulWidget {
  const FormWidgets(
      {super.key,
      required this.etNama,
      required this.etNohp,
      required this.formKey});

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etNohp;

  @override
  State<FormWidgets> createState() => _FormWidgetsState();
}

class _FormWidgetsState extends State<FormWidgets> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etNama,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "Nama",
              hintText: "Masukkan Nama",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Nama tidak boleh kosong";
              } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                return "Hanya boleh memasukkan huruf";
              }
              return null;
            },
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "No Telpon",
              hintText: "Masukkan Nomer Telepon",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan nomor telepon dengan benar";
              } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                return "Hanya boleh memasukkan angka";
              }
              return null;
            },
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
              labelText: "Alamat",
              hintText: "Masukkan Alamat",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Alamat tidak boleh kosong";
              } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                return "Hanya boleh memasukkan huruf";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
