import 'package:flutter/material.dart';

class FooterWidgets extends StatelessWidget {
  const FooterWidgets({super.key, required this.onPressedNext});

  final VoidCallback onPressedNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: onPressedNext,
          child: Text(
            "Next",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
