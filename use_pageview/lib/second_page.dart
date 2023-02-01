import 'package:flutter/material.dart';
import 'package:use_pageview/src/colors.dart';
import 'package:use_pageview/src/strings.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(gordiosLogo),
              Container(
                width: 400,
                height: 500,
                color: whiteColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.arrow_left_outlined),
                            Text(
                              loginPanelTxt,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              registerPanelTxt,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const Icon(Icons.arrow_right_sharp),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.network(
                            'https://gordioshali.com/wp-content/uploads/2022/01/Dolmabahce-4520-scaled.jpg',
                            width: 180,
                          ),
                        ),
                        Image.network(
                          'https://gordioshali.com/wp-content/uploads/2022/01/Dolmabahce-4510-scaled.jpg',
                          width: 180,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.network(
                              'https://gordioshali.com/wp-content/uploads/2022/01/Dolmabahce-4560-scaled.jpg',
                              width: 160,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 120,
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: whiteColor,
                                    border: Border.all(width: 3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    bannerTxt,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        description_2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
