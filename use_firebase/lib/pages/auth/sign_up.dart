import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                        TextField(
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.white,
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
                        TextField(
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.white,
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
                        TextField(
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.white,
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
                                  Navigator.pushNamed(context, "/loginPage");
                                },
                                child: const Text('Back')),
                            ElevatedButton(
                                onPressed: () {}, child: const Text('Register'))
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                      ],
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
