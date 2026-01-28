import 'package:flutter/material.dart';
import 'package:flutter_application/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  @override
  Widget build(BuildContext context) {
    var activeDiceImage = "assets/images/dice-1.png";

    void rollDice() {
      setState(() {
        activeDiceImage = "assets/images/dice-2.png";
      });
    }

    return Column(
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
    );
  }
}
