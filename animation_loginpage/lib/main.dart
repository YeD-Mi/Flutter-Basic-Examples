import 'package:animation_loginpage/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated Login',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFFE9EFF3),
          inputDecorationTheme: const InputDecorationTheme(
              fillColor: Colors.white,
              hoverColor: Colors.white,
              filled: true,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none)),
      home: const SignUpPage(),
    );
  }
}
