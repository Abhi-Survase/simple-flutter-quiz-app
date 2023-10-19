import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/qs_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAns});

  final List<String> chosenAns;

  List<Map<String, Object>> getAnsSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAns.length; i++) {
      summary.add({
        'question_index': i,
        'question': qnaData[i].qs,
        'correct_answer': qnaData[i].ans[0],
        'user_answer': chosenAns[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Result Screen'),
            Padding(
              padding: const EdgeInsets.all(30),
              child: QuesSummary(summaryData: getAnsSummary()),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 213, 181, 255),
              ),
              icon: const Icon(Icons.replay_rounded),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
