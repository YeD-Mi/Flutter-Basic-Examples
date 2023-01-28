import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('PAGE 3')),
          Container(
            width: 400,
            height: 500,
            color: Colors.deepPurpleAccent,
          )
        ],
      ),
    );
  }
}
