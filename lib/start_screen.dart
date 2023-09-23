import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 250, color: const Color.fromARGB(160, 255, 255, 255)),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text("Learn Flutter the fun way !",
                style: GoogleFonts.josefinSans(
                    color: const Color.fromARGB(255, 246, 238, 255),
                    fontSize: 26)),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 213, 181, 255),
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.firaSans(
                  fontSize: 17, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
