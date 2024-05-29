import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signature_app/signature_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Imza Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignaturePage(),
    );
  }
}
