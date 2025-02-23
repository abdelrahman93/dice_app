import 'package:dice_app/custom_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: CustomWidget(colors: [const Color.fromARGB(255, 7, 65, 183),
                const Color.fromARGB(255, 42, 41, 41),],),
      ),
    ),
  );
}

