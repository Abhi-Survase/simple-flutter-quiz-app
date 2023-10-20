import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesSummary extends StatelessWidget {
  const QuesSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: CircleAvatar(
                    backgroundColor:
                        ((data['user_answer'] == data['correct_answer'])
                            ? const Color.fromARGB(255, 120, 166, 250)
                            : const Color.fromARGB(255, 231, 117, 251)),
                    foregroundColor: const Color.fromARGB(255, 45, 3, 117),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.bold, fontSize: 17.3),
                      textAlign: TextAlign.center,
                    ),
                  )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['question'] as String,
                        style: GoogleFonts.josefinSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                    Text(data['correct_answer'].toString(),
                        style: GoogleFonts.firaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 228, 97, 251))),
                    Text(data['user_answer'].toString(),
                        style: GoogleFonts.firaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.cyan)),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
