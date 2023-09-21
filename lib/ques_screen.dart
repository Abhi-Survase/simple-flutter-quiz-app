import 'package:flutter/material.dart';
import 'package:adv_basics/ans_buttom.dart';
import 'package:adv_basics/data/questions.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key});

  @override
  State<QuesScreen> createState() {
    return _QuesScreenState();
  }
}

class _QuesScreenState extends State<QuesScreen> {
  @override
  Widget build(context) {
    final currentQs = qnaData[0];

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
                  style: const TextStyle(
                      color: Color.fromARGB(255, 218, 230, 255), fontSize: 16),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 30),
            ...currentQs.getShuffledAns().map((item) {
              return AnsButton(item, () {});
            }),
          ],
        ),
      ),
    );
  }
}
