import 'package:flutter/material.dart';

class QuesSummary extends StatelessWidget {
  const QuesSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: summaryData.map((data) {
      return Row(
        children: [
          Text(((data['question_index'] as int) + 1).toString()),
          Expanded(
            child: Column(
              children: [
                Text(data['question'] as String),
                Text(data['correct_answer'].toString()),
                Text(data['user_answer'].toString()),
              ],
            ),
          )
        ],
      );
    }).toList());
  }
}
