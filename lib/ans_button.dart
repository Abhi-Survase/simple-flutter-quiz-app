import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  const AnsButton({required this.ansTxt, required this.onTap, super.key});

  final String ansTxt;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 11),
          backgroundColor: const Color.fromARGB(255, 56, 6, 117),
          foregroundColor: const Color.fromARGB(255, 220, 220, 255),
          textStyle: const TextStyle(fontSize: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: Text(ansTxt, textAlign: TextAlign.center),
    );
  }
}
