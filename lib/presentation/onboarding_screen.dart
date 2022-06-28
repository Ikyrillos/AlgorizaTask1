import 'package:flutter/material.dart';
import 'package:algoriza_task1/presentation/components/app_logo.dart';
import 'package:algoriza_task1/presentation/components/onboarding_pageview.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController? controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(80, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    primary: const Color(0xffFAF2E7),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const AppLogo(),
          OnboardingPageView(controller: controller),
        ],
      ),
    );
  }
}
