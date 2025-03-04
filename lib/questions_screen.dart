import 'package:dice_app/answer_button_widget.dart';
import 'package:dice_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions(
    {
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQustion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getSuffledAnswers().map((answer) {
              return AnswerButtonWidget(textButton: answer, onClick: () {
                answerQustion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
