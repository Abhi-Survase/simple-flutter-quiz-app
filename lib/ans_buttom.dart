import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  const AnsButton(this.qsTxt, this.onTap, {super.key});

  final String qsTxt;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 11),
          backgroundColor: const Color.fromARGB(255, 17, 31, 144),
          foregroundColor: const Color.fromARGB(255, 220, 220, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: Text(qsTxt),
    );
  }
}
