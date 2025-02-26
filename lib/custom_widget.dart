import 'package:dice_app/dic_roller.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  CustomWidget({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
