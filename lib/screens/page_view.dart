import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 900),
            curve: Curves.bounceIn);
        log('Page Changed');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _pageController,
              itemCount: colors.length,
              itemBuilder: (context, index) => Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 200,
                width: 260,
                decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(1, 1),
                      spreadRadius: 5,
                      blurRadius: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SmoothPageIndicator(
            controller: _pageController,
            count: colors.length,
            axisDirection: Axis.vertical,
            onDotClicked: (index) => _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 900),
              curve: Curves.bounceInOut,
            ),
            // effect: JumpingDotEffect(activeDotColor: Colors.cyanAccent,jumpScale: 1.9),
            effect: const ColorTransitionEffect(),
          )
        ],
      ),
    );
  }
}

List<Color> colors = [
  Colors.amber,
  Colors.blue,
  Colors.greenAccent,
  Colors.cyanAccent
];
