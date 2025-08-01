import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              "assets/assets/images/quiz-logo.png",
              width: 300
          ),
          const SizedBox(height: 80),
          const Text("Learn Flutter the fun way", style: TextStyle(
            color: Color.fromARGB(255, 237, 223, 252),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              child: const Text("Start Quiz")
          )
        ],
      ),
    );
  }
}
