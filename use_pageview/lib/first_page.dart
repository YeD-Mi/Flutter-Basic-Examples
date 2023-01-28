import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('PAGE 1')),
          Container(
            width: 400,
            height: 500,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
