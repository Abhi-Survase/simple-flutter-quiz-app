import 'package:flutter/material.dart';
import 'package:adv_basics/ans_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key, required this.onSelectAns});

  final void Function(String answer) onSelectAns;
  @override
  State<QuesScreen> createState() {
    return _QuesScreenState();
  }
}

class _QuesScreenState extends State<QuesScreen> {
  var currentQsIndex = 0;

  void ansqs(String selectedAns) {
    widget.onSelectAns(selectedAns);

    setState(() {
      currentQsIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQs = qnaData[currentQsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 350,
              child: Text(currentQs.qs,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 203, 182, 255),
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 30),
            ...currentQs.getShuffledAns().map((answer) {
              return AnsButton(
                  ansTxt: answer,
                  onTap: () {
                    ansqs(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
