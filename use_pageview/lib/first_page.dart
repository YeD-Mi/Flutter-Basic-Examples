import 'package:flutter/material.dart';
import 'package:use_pageview/order_page.dart';
import 'package:use_pageview/src/colors.dart';
import 'package:use_pageview/src/strings.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

final TextEditingController userNameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
bool isVisible = true;

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Padding _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              firstApptxt,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 550,
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 25, left: 20, right: 20, bottom: 5),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(kucukmutlu),
                      const SizedBox(height: 25),
                      const Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                      const SizedBox(height: 15),
                      const Divider(color: whiteColor),
                      const SizedBox(height: 15),
                      TextField(
                          style: const TextStyle(color: whiteColor),
                          controller: userNameController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: whiteColor,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail,
                                color: whiteColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: whiteColor)),
                              labelText: userNametxt,
                              labelStyle:
                                  TextStyle(color: whiteColor, fontSize: 18))),
                      const SizedBox(height: 15),
                      TextField(
                        style: const TextStyle(color: whiteColor),
                        controller: passwordController,
                        obscureText: isVisible ? true : false,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: whiteColor,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: () {
                                  if (isVisible) {
                                    setState(() {
                                      isVisible = false;
                                    });
                                  } else {
                                    setState(() {
                                      isVisible = true;
                                    });
                                  }
                                },
                                child: const Icon(
                                  Icons.remove_red_eye,
                                  color: whiteColor,
                                )),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: whiteColor,
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: whiteColor)),
                            labelText: passwordtxt,
                            labelStyle: const TextStyle(
                                color: whiteColor, fontSize: 18)),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: whiteColor),
                          onPressed: () {
                            Navigator.pushReplacement(
                                //Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OrderPage()));
                          },
                          child: Text(
                            loginButton,
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            forgettenText,
                            style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                color: whiteColor),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
