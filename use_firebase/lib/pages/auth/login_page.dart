import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email, password;
  String topImages = 'assets/images/topimages.png';
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Login Page',
                            style: TextStyle(
                                color: Colors.amber.shade100,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: size.height * 0.05),
                          Text(
                            'Welcome to a fiery firebase app.',
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
                                password = value!;
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();
                                    } else {}
                                  },
                                  child: const Text('Login')),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/signUp");
                                  },
                                  child: const Text('Register'))
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(Icons.memory),
                                  Text('Forgot My Password'),
                                ],
                              ))
                        ],
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
