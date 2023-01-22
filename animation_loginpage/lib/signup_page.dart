import 'package:animation_loginpage/animated_hover.dart';
import 'package:animation_loginpage/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String title = 'BIZE KATIL';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedHover(
        curve: Curves.fastOutSlowIn,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            const SignUpForm()
          ],
        ),
      )),
    );
  }
}
