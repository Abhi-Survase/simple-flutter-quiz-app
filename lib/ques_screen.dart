import 'package:flutter/material.dart';

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
          const Text('Question',
              style: TextStyle(color: Colors.white, fontSize: 24)),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: const Text('data1')),
          ElevatedButton(onPressed: () {}, child: const Text('data2')),
          ElevatedButton(onPressed: () {}, child: const Text('data3')),
          ElevatedButton(onPressed: () {}, child: const Text('data4')),
        ],
      ),
    );
  }
}
