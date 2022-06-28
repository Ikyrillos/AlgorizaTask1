import 'package:algoriza_task1/presentation/components/default_form_field.dart';
import 'package:algoriza_task1/presentation/components/register_components.dart';
import 'package:algoriza_task1/presentation/components/terms_notify_text.dart';
import 'package:algoriza_task1/presentation/login_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopPageBackground(height: 80),
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
                        const TitleText(text: 'Register'),
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
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: DefaultFormField(
                        height: 50,
                        controller: email,
                        type: TextInputType.emailAddress,
                        isPassword: false,
                        label: 'EG. example@email.com'),
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
                          const TitleOfFormFiled(text: 'Phone Number'),
                          const SizedBox(
                            height: 5,
                          ),
                          DefaultFormField(
                            height: 50,
                            controller: email,
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
                  const LoginButton(buttonName: 'Register'),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: const Text('or',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                  const LoginOutlinedButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: LoginTextButton(
                          buttonName: 'Sign in here',
                          description: 'Has any accounts?',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          const TermsNotifyText(
                              text: 'By registering, you agree to our'),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Terms and Conditions')),
                        ],
                      ),
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

class LoginTextButton extends StatelessWidget {
  const LoginTextButton(
      {Key? key, required this.buttonName, required this.description})
      : super(key: key);

  final String description;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              buttonName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            )),
      ],
    );
  }
}
