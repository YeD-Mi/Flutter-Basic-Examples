import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  late String email, password1, password2;
  final firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String topImages = 'assets/images/topimages.png';
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.04, vertical: size.height * 0.035),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(topImages),
              Container(
                width: size.width,
                height: size.height * 0.65,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber.shade100),
                    color: Colors.grey.shade900.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        topRight: Radius.circular(120))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Expanded(
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Register Page',
                              style: TextStyle(
                                  color: Colors.amber.shade100,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: size.height * 0.05),
                            Text(
                              'I was raw, cooked, burned.',
                              style: TextStyle(
                                  color: Colors.amber.shade100, fontSize: 16),
                            ),
                            SizedBox(height: size.height * 0.05),
                            TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.white,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return "Bilgileri doldur";
                                  else {}
                                },
                                onSaved: ((value) {
                                  email = value!;
                                }),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.mail,
                                      color: Colors.amber.shade100,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.amber.shade100)),
                                    labelText: 'User Name',
                                    labelStyle: TextStyle(
                                        color: Colors.amber.shade100,
                                        fontSize: 18))),
                            TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.white,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return "Bilgileri doldur";
                                  else {}
                                },
                                onSaved: ((value) {
                                  password1 = value!;
                                }),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.lock_open_rounded,
                                      color: Colors.amber.shade100,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.amber.shade100)),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                        color: Colors.amber.shade100,
                                        fontSize: 18))),
                            TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.white,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return "Bilgileri doldur";
                                  else {}
                                },
                                onSaved: ((value) {
                                  if (value == password1) {
                                    password2 = value!;
                                  } else {}
                                }),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.lock_open_rounded,
                                      color: Colors.amber.shade100,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.amber.shade100)),
                                    labelText: 'Again Password',
                                    labelStyle: TextStyle(
                                        color: Colors.amber.shade100,
                                        fontSize: 18))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, "/loginPage");
                                    },
                                    child: const Text('Back')),
                                ElevatedButton(
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        formKey.currentState!.save();
                                        try {
                                          var userResult = await firebaseAuth
                                              .createUserWithEmailAndPassword(
                                                  email: email,
                                                  password: password2);
                                          formKey.currentState!.reset();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content: Text(
                                                      'Registration successful. You can login.')));
                                          Navigator.pushReplacementNamed(
                                              context, "/loginPage");
                                        } catch (e) {
                                          print((e.toString()));
                                        }
                                      } else {}
                                    },
                                    child: const Text('Register'))
                              ],
                            ),
                            SizedBox(height: size.height * 0.02),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
