import 'package:flutter/material.dart';
import 'package:ucp1/pages/haldua.dart';
import 'package:ucp1/widgets/footer_widgets.dart';
import 'package:ucp1/widgets/form_widgets.dart';
import 'package:ucp1/widgets/header_widgets.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
  var nama = TextEditingController();
  var nohp = TextEditingController();
  var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HeaderWidgets(),
                FormWidgets(
                  etNama: nama,
                  etNohp: nohp,
                  formKey: formKey,
                ),
                FooterWidgets(
                  onPressedNext: () {
                    if(formKey.currentState!.validate()){
                      Navigator.pushAndRemoveUntil(
                        context, 
                        MaterialPageRoute(builder: (context) => HalamanDua(nama: nama.text, nohp: nohp.text,),
                        ),
                        (route) => false );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Berhasil")));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        ),
    );
  }
}