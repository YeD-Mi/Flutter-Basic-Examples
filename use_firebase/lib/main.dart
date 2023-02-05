import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:use_firebase/pages/auth/login_page.dart';
import 'package:use_firebase/pages/auth/sign_up.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/loginPage": ((context) => const LoginPage()),
        "/signUp": ((context) => const SignUp())
      },
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const LoginPage(),
    );
  }
}
