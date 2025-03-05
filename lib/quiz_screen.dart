import 'package:dice_app/data/questions.dart';
import 'package:dice_app/questions_screen.dart';
import 'package:dice_app/results_screen.dart';
import 'package:dice_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void onRestart() {
    setState(() {
      selectedAnswers=[];
      activeScreen = 'start-screen';
      questions.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWideget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWideget = Questions(onSelectAnswer: chooseAnswer);
    }

     if (activeScreen == 'results-screen') {
      screenWideget = ResultsScreen(chosenAnswers: selectedAnswers,onRestart: onRestart,);
    }



    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 66, 8, 192),
                const Color.fromARGB(255, 205, 201, 201),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWideget,
        ),
      ),
    );
  }
}
