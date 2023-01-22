import 'package:flutter/material.dart';
import 'package:animation_loginpage/animated_hover.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AnimatedHover(
            size: const Size(360, 55),
            hoverColor: Colors.white,
            bgColor: Colors.white,
            border: Border.all(),
            offset: const Offset(6, 6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                onSaved: (username) {},
                decoration: const InputDecoration(
                  hintText: "Kullanici Adi",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: AnimatedHover(
              size: const Size(360, 55),
              hoverColor: Colors.white,
              bgColor: Colors.white,
              border: Border.all(),
              offset: const Offset(6, 6),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextFormField(
                  onSaved: (email) {},
                  decoration: const InputDecoration(
                    hintText: "E-Posta Adresi",
                  ),
                ),
              ),
            ),
          ),
          AnimatedHover(
            size: const Size(360, 55),
            hoverColor: Colors.white,
            bgColor: Colors.white,
            border: Border.all(),
            offset: const Offset(6, 6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                onSaved: (password) {},
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Parola",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          AnimatedHover(
            size: const Size(88, 48),
            offset: const Offset(6, 6),
            curve: Curves.fastOutSlowIn,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: const Size(88, 48),
                    backgroundColor: const Color(0xFF556124),
                    foregroundColor: const Color(0xFFD9E1BE),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)))),
                child: const Text('Uye Ol')),
          )
        ],
      )),
    );
  }
}
