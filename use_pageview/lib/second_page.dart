import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('PAGE 2'))),
      body: Container(
        width: 400,
        height: 500,
        color: Colors.blueAccent.shade700,
      ),
    );
  }
}
