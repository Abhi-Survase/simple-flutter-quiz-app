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
          backgroundColor: const Color.fromARGB(255, 8, 24, 148),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: Text(qsTxt),
    );
  }
}
