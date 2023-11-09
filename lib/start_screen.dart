import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Uygulaması'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuestionScreen(),
              ),
            );
          },
          child: Text('Başla'),
        ),
      ),
    );
  }
}
