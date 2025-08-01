import 'package:flutter/material.dart';

class QuizQuestion {
  const  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffeldAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}