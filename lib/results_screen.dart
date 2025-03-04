import 'package:dice_app/data/questions.dart';
import 'package:dice_app/questions_summary/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  ResultsScreen({super.key,required this.onRestart ,required this.chosenAnswers});

  List<String> chosenAnswers = [];

  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summaryList = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryList.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summaryList;
  }

  @override
  State<ResultsScreen> createState() {
    return _ResultsScreenState();
  }
}

class _ResultsScreenState extends State<ResultsScreen> {
  var activeScreen = 'results-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  

  @override
  Widget build(BuildContext context) {
    final summaryData = widget.getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){
      return data['user_answer']==data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You Answered $numCorrectQuestions out of $numTotalQuestions'),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),
            SizedBox(height: 30),
            TextButton.icon(onPressed: widget.onRestart,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            icon :const Icon(Icons.refresh) ,            
             label: const Text('Restrat Quiz')),
          ],
        ),
      ),
    );
  }
}
