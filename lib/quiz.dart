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
  Widget? activeState;

  @override
  void initState() {
    super.initState();
    activeState = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeState = const QuesScreen();
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
          child: activeState,
        ),
      ),
    );
  }
}
