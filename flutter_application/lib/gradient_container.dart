import 'package:flutter/material.dart';
import 'package:flutter_application/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor
  // GradientContainer() {
  //   // initialization work
  // }
  // GradientContainer({key}) : super(key: key);
  GradientContainer({super.key, required this.colors}); // First constructor

  GradientContainer.purple({
    super.key,
  }) //🧩 Đây là constructor có tên (named constructor)
  : colors = const [Colors.deepPurple, Colors.indigo]; // Second constructor
  final List<Color> colors;

  var activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    activeDiceImage = "assets/images/dice-2.png";
    print("Changing Dice Image");
  }

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
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            StyledText('Hello World!'),
            SizedBox(height: 16), // khoảng cách giữa 2 dòng
            Image.asset(activeDiceImage, width: 200),
            SizedBox(height: 16),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
