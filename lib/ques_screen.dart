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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
            child: Text(currentQs.qs,
                style: const TextStyle(color: Colors.white, fontSize: 21)),
          ),
          const SizedBox(height: 30),
          AnsButton(currentQs.ans[0], () {}),
          AnsButton(currentQs.ans[1], () {}),
          AnsButton(currentQs.ans[2], () {}),
          AnsButton(currentQs.ans[3], () {}),
        ],
      ),
    );
  }
}
