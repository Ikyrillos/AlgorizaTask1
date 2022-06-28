import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // TODO : fix this back to the first image error
      child: Container(
        padding: const EdgeInsets.only(bottom: 200, left: 30, right: 30),
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
            onPageChanged: (value) {},
            controller: controller,
            children: [
              Image.asset(
                'assets/images/business-3d-happy-robot-assistant-waving-hello.png',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/bonbon-web-design-2.png',
                fit: BoxFit.fill,
                height: 100,
                width: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
