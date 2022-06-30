import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 270, left: 30, right: 30, top: 15),
      child: GestureDetector(
        onVerticalDragEnd: (details) {
          controller!.nextPage(
              duration: const Duration(seconds: 1), curve: Curves.easeIn);
        },
        onVerticalDragStart: (details) {
          controller!.previousPage(
              duration: const Duration(seconds: 1), curve: Curves.easeOut);
        },
        child: PageView(
          controller: controller,
          children: [
            Image.asset(
              'assets/images/glossy-e-commerce.png',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/images/bonbon-web-design-2.png',
              fit: BoxFit.fill,
              height: 80,
              // width: 60,
            ),
          ],
        ),
      ),
    );
  }
}
