import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/ques_screen.dart';
import 'package:adv_basics/start_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() {
    return _QuizState();
  }
}

const startscreen = 'start-scr';
const quesscreen = 'ques-scr';

class _QuizState extends State<QuizApp> {
  final List<String> selectedAns = [];

  //Using Ternary Expression Method
  var activeState = startscreen;

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

      activeState = quesscreen;
    });
  }

  void chooseAns(String ans) {
    selectedAns.add(ans);

    if (selectedAns.length == qnaData.length) {
      setState(() {
        activeState = startscreen;
      });
    }
  }

  @override
  Widget build(context) {
    Widget displayScr = StartScreen(switchScreen);

    if (activeState == quesscreen) {
      displayScr = QuesScreen(onSelectAns: chooseAns);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 95, 37, 204),
                Color.fromARGB(255, 87, 28, 170)
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
