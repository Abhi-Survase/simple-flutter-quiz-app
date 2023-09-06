import 'package:flutter/material.dart';
import 'package:adv_basics/ans_buttom.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Question Goes Here',
              style: TextStyle(color: Colors.white, fontSize: 24)),
          const SizedBox(height: 30),
          AnsButton('Option One', () {}),
          AnsButton('Option 2', () {}),
          AnsButton('Option III', () {}),
        ],
      ),
    );
  }
}
