import 'package:flutter/material.dart';
import 'package:use_pageview/first_page.dart';
import 'package:use_pageview/second_page.dart';
import 'package:use_pageview/third_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final _pageController =
      PageController(keepPage: true, initialPage: 1, viewportFraction: 0.9);
  final _durationSeconds = const Duration(seconds: 1);
  final _durationCurve = Curves.decelerate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _durationSeconds, curve: _durationCurve);
              },
              child: const Icon(Icons.arrow_left_sharp),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _durationSeconds, curve: _durationCurve);
              },
              child: const Icon(Icons.arrow_right_sharp),
            ),
          ],
        ),
        body: PageView(
          pageSnapping: true,
          controller: _pageController,
          children: const [FirstPage(), SecondPage(), ThirdPage()],
        ));
  }
}
