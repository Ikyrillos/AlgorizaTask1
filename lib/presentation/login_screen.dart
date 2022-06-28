import 'dart:ui';

import 'package:algoriza_task1/presentation/components/default_form_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to Fashion daily',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                            fontFamily: 'serifProBook',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Help',
                              style: TextStyle(color: Color(0xff3288FE)),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.help,
                                color: Color(0xff3288FE),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 11,
                        right: 11,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Phone Number',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          DefaultFormField(
                            height: 50,
                            controller: phone,
                            isPassword: false,
                            label: 'EG. 812345678',
                            type: TextInputType.phone,
                            prefixWidget: CountryCodePicker(
                              alignLeft: false,
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              showFlag: false,
                              showFlagDialog: true,
                              onChanged: print,
                              initialSelection: 'EG',
                              favorite: const ['+20', 'EG'],
                              textOverflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: SizedBox(
                            height: 43,
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text('Sign In',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: const Text('or',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        side: const BorderSide(width: 1.0, color: Colors.blue),
                        primary: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 25,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/googleicon.svg',
                                height: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'Sign in by Google',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Doesn't Have any account?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Register Here',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      const TermsNotifyText(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TermsNotifyText extends StatelessWidget {
  const TermsNotifyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'use the application according to policy rules, Any kinds of Violation will be subject to sanctions',
        style: TextStyle(fontSize: 14, color: Colors.grey),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
