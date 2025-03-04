import 'package:dice_app/answer_button_widget.dart';
import 'package:dice_app/data/questions.dart';
import 'package:dice_app/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatefulWidget {
  const SummaryItem({required this.itemData, super.key});

  final Map<String, Object> itemData;

  @override
  State<SummaryItem> createState() {
    return _SummaryItemState();
  }
}

class _SummaryItemState extends State<SummaryItem> {
  var currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _isCorrectAnswer =
        widget.itemData['user_answer'] == widget.itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: widget.itemData['question_index'] as int,
          isCorrectAnswer: _isCorrectAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Question : ${widget.itemData['question'] as String}",
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Answer : ${widget.itemData['user_answer'] as String}",
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 155, 154, 154),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Correct Answer : ${widget.itemData['correct_answer'] as String}",
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 77, 174, 105),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
