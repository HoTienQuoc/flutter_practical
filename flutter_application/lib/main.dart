import 'package:flutter/material.dart';
import 'package:flutter_application/gradient_container.dart';

void main() {
  //Note MaterialApp is root, Scaffold is layout widget, Row is widget
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 47, 5, 120),
        body: GradientContainer(),
      ),
    ),
  );
}
