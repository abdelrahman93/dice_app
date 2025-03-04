import 'package:dice_app/answer_button_widget.dart';
import 'package:dice_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatefulWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  State<QuestionIdentifier> createState() {
    return _QuestionIdentifierState();
  }
}

class _QuestionIdentifierState extends State<QuestionIdentifier> {
  var currentQuestionIndex = 0;

  // void answerQustion(String selectedAnswer) {
  //   setState(() {
  //     currentQuestionIndex++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final questionNumber = widget.questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.isCorrectAnswer ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
