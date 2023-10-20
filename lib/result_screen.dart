import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/qs_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAns, required this.restartQuiz});

  final List<String> chosenAns;
  final void Function() restartQuiz;

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
    final summaryData = getAnsSummary();
    final totalQs = qnaData.length;
    final correctAns = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got $correctAns out of $totalQs answers correct !',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 232, 162, 255),
                  fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 50),
              child: QuesSummary(summaryData: summaryData),
            ),
            OutlinedButton.icon(
              onPressed: () {
                restartQuiz.call();
                chosenAns.clear();
                getAnsSummary().clear();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 213, 181, 255),
              ),
              icon: const Icon(
                Icons.autorenew_outlined,
              ),
              label: Text(
                "Restart Quiz",
                style: GoogleFonts.firaSans(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
