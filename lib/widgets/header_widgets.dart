import 'package:flutter/material.dart';

class HeaderWidgets extends StatelessWidget {
  const HeaderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Data Form"),
        const Text(
          "Warmindo Mbantul",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          width: 250,
          child: Image.network(
              "https://awsimages.detik.net.id/community/media/visual/2018/03/08/2e61153c-d96d-4c90-8bac-87ccf009245b.jpeg?w=600&q=90"),
        ),
      ],
    );
  }
}
