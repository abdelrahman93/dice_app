import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  const AnswerButtonWidget({
    super.key,
    required this.textButton,
    required this.onClick,
  });

  final String textButton;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 54, 1, 107),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(textButton),
    );
  }
}
