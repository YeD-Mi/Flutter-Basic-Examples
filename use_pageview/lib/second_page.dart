import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('PAGE 2')),
          Container(
            width: 400,
            height: 500,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
