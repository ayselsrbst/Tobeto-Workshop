import 'package:flutter/material.dart';
import 'package:quiz_app/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionNumber = 0;
  int score = 0;

  List<Map<String, dynamic>> questions = [
    {
      'questionText': 'Türkiye\'nin başkenti neresidir?',
      'answers': [
        {'text': 'Ankara', 'correct': true},
        {'text': 'İstanbul', 'correct': false},
        {'text': 'İzmir', 'correct': false},
        {'text': 'Bursa', 'correct': false},
      ],
    },
    {
      'questionText': 'Hangisi bir meyve türüdür?',
      'answers': [
        {'text': 'Elma', 'correct': true},
        {'text': 'Araba', 'correct': false},
        {'text': 'Televizyon', 'correct': false},
        {'text': 'Köpek', 'correct': false},
      ],
    },
    {
      'questionText': 'En büyük gezegen hangisidir?',
      'answers': [
        {'text': 'Jüpiter', 'correct': true},
        {'text': 'Dünya', 'correct': false},
        {'text': 'Mars', 'correct': false},
        {'text': 'Venüs', 'correct': false},
      ],
    },
  ];

  void answerQuestion(bool isCorrect) {
    if (isCorrect) {
      score += 1;
    }

    if (questionNumber < questions.length - 1) {
      setState(() {
        questionNumber++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(score: score),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Uygulaması'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[questionNumber]['questionText'],
              style: TextStyle(fontSize: 24),
            ),
            ...(questions[questionNumber]['answers']
                    as List<Map<String, dynamic>>)
                .map((answer) {
              return ElevatedButton(
                onPressed: () {
                  answerQuestion(answer['correct']);
                },
                child: Text(answer['text']),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
