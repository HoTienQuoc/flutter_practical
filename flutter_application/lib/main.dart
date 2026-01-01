import 'package:flutter/material.dart';

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

class GradientContainer extends StatelessWidget {
  // Constructor
  // GradientContainer() {
  //   // initialization work
  // }
  // GradientContainer({key}) : super(key: key);
  const GradientContainer({super.key});

  @override
  // Called for you, automatically, by Flutter
  // (when it renders the user interface)
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
