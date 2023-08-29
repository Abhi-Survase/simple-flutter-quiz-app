import 'package:flutter/material.dart';
import 'package:adv_basics/ques_screen.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Using Ternary Expression Method
  var activeState = 'startscreen';

  //---Using initState Method---
  // Widget? activeState;
  // @override
  // void initState() {
  //   super.initState();
  //   activeState = StartScreen(switchScreen);
  // }
  //---initState Method ends---

  void switchScreen() {
    setState(() {
      //init state method declaration
      //activeState = QuesScreen();

      activeState = 'quesscreen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo, Colors.deepPurple],
            ),
          ),
          //initState Method declaration
          //child: activeState,

          //Ternary Expression with Comparison Operator
          child: activeState == 'startscreen'
              ? StartScreen(switchScreen)
              : const QuesScreen(),
        ),
      ),
    );
  }
}
