import 'package:flutter/material.dart';
import 'package:use_listtile/listtile_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter List Tile',
      theme: ThemeData(
          primarySwatch: Colors.red,
          iconTheme: const IconThemeData(color: Colors.red)),
      home: const ListTileExample(),
    );
  }
}
