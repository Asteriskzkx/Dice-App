import 'package:flutter/material.dart';

class styled_text extends StatelessWidget {
  const styled_text(this.data, {super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
