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
        floatingActionButton: _FloatingButtons(
            pageController: _pageController,
            durationSeconds: _durationSeconds,
            durationCurve: _durationCurve),
        body: _BuildBody(pageController: _pageController));
  }
}

class _FloatingButtons extends StatelessWidget {
  const _FloatingButtons({
    Key? key,
    required PageController pageController,
    required Duration durationSeconds,
    required Curve durationCurve,
  })  : _pageController = pageController,
        _durationSeconds = durationSeconds,
        _durationCurve = durationCurve,
        super(key: key);

  final PageController _pageController;
  final Duration _durationSeconds;
  final Curve _durationCurve;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 3, color: Colors.amber),
              borderRadius: BorderRadius.circular(100)),
          backgroundColor: Colors.white,
          onPressed: () {
            _pageController.previousPage(
                duration: _durationSeconds, curve: _durationCurve);
          },
          child: const Icon(
            Icons.arrow_left_sharp,
            color: Colors.black,
          ),
        ),
        FloatingActionButton(
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 3, color: Colors.amber),
              borderRadius: BorderRadius.circular(100)),
          backgroundColor: Colors.white,
          onPressed: () {
            _pageController.nextPage(
                duration: _durationSeconds, curve: _durationCurve);
          },
          child: const Icon(
            Icons.arrow_right_sharp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true,
      controller: _pageController,
      children: const [FirstPage(), SecondPage(), ThirdPage()],
    );
  }
}
