import 'package:flutter/material.dart';
import 'package:myapp/GradientContainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: GradientContainer([Color(0xFF222831),
    Color(0xFF393E46),
    Color(0xFF00ADB5),
    Color(0xFFEEEEEE)],),
    ),
  ));
}
