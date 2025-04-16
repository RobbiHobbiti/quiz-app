import 'package:flutter/material.dart';

import 'package:quiz/summery_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.SummaryData, {super.key});

  final List<Map<String, Object>> SummaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: SummaryData.map(
             (data) {
                return SummaryItem(data);
              }).toList(),
        ),
      ),
    );
  }
}
