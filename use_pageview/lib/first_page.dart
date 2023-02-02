import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('PAGE 1')),
      ),
      body: Container(
        color: Colors.yellowAccent.shade700,
        height: 500,
        width: 400,
      ),
    );
  }
}
