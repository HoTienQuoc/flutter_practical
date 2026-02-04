import 'package:flutter/material.dart';
import 'package:flutter_application/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor
  // GradientContainer() {
  //   // initialization work
  // }
  // GradientContainer({key}) : super(key: key);
  const GradientContainer({
    super.key,
    required this.colors,
  }); // First constructor

  const GradientContainer.purple({
    super.key,
  }) //🧩 Đây là constructor có tên (named constructor)
  : colors = const [Colors.deepPurple, Colors.indigo]; // Second constructor
  final List<Color> colors;

  @override
  // Called for you, automatically, by Flutter
  // (when it renders the user interface)
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: [
          //   // Color.fromARGB(255, 26, 2, 80),
          //   // Color.fromARGB(255, 45, 7, 98),
          // ],
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
