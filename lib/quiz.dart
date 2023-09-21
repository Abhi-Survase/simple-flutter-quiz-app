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
  var activeState = 'start-scr';

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

      activeState = 'ques-scr';
    });
  }

  @override
  Widget build(context) {
    Widget displayScr = StartScreen(switchScreen);

    if (activeState == 'ques-scr') {
      displayScr = const QuesScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 61, 54, 204),
                Color.fromARGB(255, 45, 40, 156)
              ],
            ),
          ),
          child: displayScr,
          //initState Method declaration
          //child: activeState,
          //Ternary Expression with Comparison Operator
          // child: activeState == 'startscreen'
          //     ? StartScreen(switchScreen)
          //     : const QuesScreen(),
        ),
      ),
    );
  }
}
