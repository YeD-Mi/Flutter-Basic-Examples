import 'package:flutter/material.dart';
import 'package:use_pageview/src/colors.dart';
import 'package:use_pageview/src/strings.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                thirdAppTxt,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 550,
                color: orangeColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 5),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          description_3,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: whiteColor),
                        const SizedBox(height: 10),
                        TextField(
                            keyboardType: TextInputType.text,
                            cursorColor: whiteColor,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.auto_awesome,
                                  color: whiteColor,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: whiteColor)),
                                labelText: companyName,
                                labelStyle: const TextStyle(
                                    color: whiteColor, fontSize: 18))),
                        const SizedBox(height: 10),
                        TextField(
                            keyboardType: TextInputType.number,
                            cursorColor: whiteColor,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.switch_access_shortcut_outlined,
                                  color: whiteColor,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: whiteColor)),
                                labelText: taxNumber,
                                labelStyle: const TextStyle(
                                    color: whiteColor, fontSize: 18))),
                        const SizedBox(height: 10),
                        TextField(
                            keyboardType: TextInputType.phone,
                            cursorColor: whiteColor,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.mobile_friendly,
                                  color: whiteColor,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.white)),
                                labelText: telNumber,
                                labelStyle: const TextStyle(
                                    color: Colors.white, fontSize: 18))),
                        const SizedBox(height: 10),
                        TextField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: whiteColor,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.mail,
                                  color: whiteColor,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.white)),
                                labelText: epostaTxt,
                                labelStyle: const TextStyle(
                                    color: whiteColor, fontSize: 18))),
                        const SizedBox(height: 10),
                        TextField(
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
                        const SizedBox(height: 10),
                        TextField(
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
                              labelText: passwordAgain,
                              labelStyle: const TextStyle(
                                  color: whiteColor, fontSize: 18)),
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: whiteColor),
                            onPressed: () {},
                            child: Text(
                              registerButton,
                              style: TextStyle(
                                  color: orangeColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            )),
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
