import 'package:algoriza_task1/presentation/login_screen.dart';
import 'package:algoriza_task1/presentation/register_screen.dart';
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
      body: SafeArea(
        child: Column(
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
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
            Expanded(
              child: Stack(
                children: [
                  OnboardingPageView(controller: controller),
                  // put text under the image in the stack
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Get food delivery in your \n  doorstep asap!',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'We have young and professional delivery \n  team that will bring your food as soon as \n possible to your doorstep.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 344,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(200, 43),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              primary: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                            },
                            child: const Text('Get Started')),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 450,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoginTextButton(
                          fontsize: 16,
                          buttonName: 'Sign up',
                          description: "Don't have an account?",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
