
import 'dart:math';

import 'package:dice_app/modles/quiz_questions.dart';

var questions= getShuffledQuestions(questions2);


var questions2 = [// Easy questions
    QuizQuestion(
      'Who won the FIFA World Cup in 2018?',
      [
        'France',
        'Brazil',
        'Germany',
        'Argentina',
      ],
    ),
    QuizQuestion(
      'Which footballer holds the record for the most goals in World Cup history?',
      [
        'Miroslav Klose',
        'Cristiano Ronaldo',
        'Lionel Messi',
        'Marta',
      ],
    ),
    QuizQuestion(
      'What is the maximum number of players allowed on a football team?',
      [
        '11',
        '12',
        '15',
        '9',
      ],
    ),
    QuizQuestion(
      'Which country hosted the 2014 FIFA World Cup?',
      [
        'Brazil',
        'South Africa',
        'Germany',
        'Russia',
      ],
    ),
    QuizQuestion(
      'Who is known as the "Egyptian King" in football?',
      [
        'Mohamed Salah',
        'Ahmed Hegazi',
        'Mohamed Nagy',
        'Mohamed Elneny',
      ],
    ),
    // Medium difficulty questions
    QuizQuestion(
      'Which club did Lionel Messi join in 2021?',
      [
        'Paris Saint-Germain',
        'FC Barcelona',
        'Manchester City',
        'Juventus',
      ],
    ),
    QuizQuestion(
      'How many minutes are there in a full football match, excluding extra time?',
      [
        '90',
        '80',
        '100',
        '120',
      ],
    ),
    QuizQuestion(
      'Which country won the most FIFA World Cups?',
      [
        'Brazil',
        'Germany',
        'Italy',
        'Argentina',
      ],
    ),
    QuizQuestion(
      'What is the name of the famous football competition between club teams from Europe?',
      [
        'UEFA Champions League',
        'Copa Libertadores',
        'Premier League',
        'La Liga',
      ],
    ),
    QuizQuestion(
      'Who won the Ballon d\'Or in 2020?',
      [
        'No award was given',
        'Lionel Messi',
        'Robert Lewandowski',
        'Cristiano Ronaldo',
      ],
    ),
    // Harder questions
    QuizQuestion(
      'Which team did Diego Maradona play for when he scored the "Hand of God" goal?',
      [
        'Argentina',
        'Napoli',
        'Barcelona',
        'Boca Juniors',
      ],
    ),
    QuizQuestion(
      'Which country won the first-ever FIFA World Cup in 1930?',
      [
        'Uruguay',
        'Argentina',
        'Brazil',
        'Italy',
      ],
    ),
    QuizQuestion(
      'What year did the Premier League begin?',
      [
        '1992',
        '1989',
        '1994',
        '1996',
      ],
    ),
    QuizQuestion(
      'Who is the all-time top scorer for the Spanish national team?',
      [
        'David Villa',
        'Fernando Torres',
        'Iker Casillas',
        'Sergio Ramos',
      ],
    ),
    QuizQuestion(
      'Who won the 2006 FIFA World Cup?',
      [
        'Italy',
        'France',
        'Germany',
        'Brazil',
      ],
    ),
    // Very Hard questions
    QuizQuestion(
      'Which footballer won the most Champions League titles in history?',
      [
        'Cristiano Ronaldo',
        'Lionel Messi',
        'Paolo Maldini',
        'Karim Benzema',
      ],
    ),
    QuizQuestion(
      'What is the longest unbeaten run in Premier League history?',
      [
        '49 matches',
        '41 matches',
        '38 matches',
        '45 matches',
      ],
    ),
    QuizQuestion(
      'Which African country has the most CAF Africa Cup of Nations titles?',
      [
        'Egypt',
        'Cameroon',
        'Nigeria',
        'Ghana',
      ],
    ),
    QuizQuestion(
      'Which club is known as "The Red Devils"?',
      [
        'Manchester United',
        'Liverpool',
        'Arsenal',
        'Chelsea',
      ],
    ),
    QuizQuestion(
      'Which country won the UEFA Euro 2016?',
      [
        'Portugal',
        'France',
        'Spain',
        'Germany',
      ],
    ),
    // Expert questions
    QuizQuestion(
      'Who was the first footballer to win the Ballon d\'Or?',
      [
        'Stanley Matthews',
        'Lionel Messi',
        'Cristiano Ronaldo',
        'Johan Cruyff',
      ],
    ),
    QuizQuestion(
      'Who holds the record for the most goals scored in a single World Cup?',
      [
        'Just Fontaine',
        'Ronaldo Nazário',
        'Miroslav Klose',
        'Pele',
      ],
    ),
    QuizQuestion(
      'Which football club is known as "The Special One"?',
      [
        'Chelsea',
        'Manchester United',
        'Inter Milan',
        'Real Madrid',
      ],
    ),
    QuizQuestion(
      'Who scored the winning goal in the 1998 FIFA World Cup final?',
      [
        'Zinedine Zidane',
        'David Trezeguet',
        'Thierry Henry',
        'Emmanuel Petit',
      ],
    ),
    QuizQuestion(
      'Which team holds the record for the most consecutive La Liga titles?',
      [
        'Real Madrid',
        'Barcelona',
        'Atletico Madrid',
        'Valencia',
      ],
    ),
    // Master-level questions
    QuizQuestion(
      'Which player holds the record for most goals in a single season of La Liga?',
      [
        'Lionel Messi',
        'Cristiano Ronaldo',
        'Telmo Zarra',
        'Karim Benzema',
      ],
    ),
    QuizQuestion(
      'Who was the first African player to win the Ballon d\'Or?',
      [
        'George Weah',
        'Didier Drogba',
        'Samuel Eto\'o',
        'Yaya Touré',
      ],
    ),
    QuizQuestion(
      'Which team has won the most Copa América titles?',
      [
        'Uruguay',
        'Argentina',
        'Brazil',
        'Chile',
      ],
    ),
    QuizQuestion(
      'Which club did Cristiano Ronaldo play for before joining Juventus in 2018?',
      [
        'Real Madrid',
        'Manchester United',
        'Sporting CP',
        'PSG',
      ],
    ),
    QuizQuestion(
      'Who holds the record for the most goals scored in a World Cup final tournament?',
      [
        'Miroslav Klose',
        'Ronaldo Nazário',
        'Pele',
        'Just Fontaine',
      ],
    ),
  ];


List<QuizQuestion> getShuffledQuestions(List<QuizQuestion> questions) {
  // Create a copy of the original list to avoid modifying the original list
  List<QuizQuestion> shuffledQuestions = List.from(questions);

  // Shuffle the list
  shuffledQuestions.shuffle(Random());

  // Return the first 5 questions
  return shuffledQuestions.take(10).toList();
}
