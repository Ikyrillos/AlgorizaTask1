import 'package:algoriza_task1/presentation/components/default_form_field.dart';
import 'package:algoriza_task1/presentation/components/app_components.dart';

import 'package:algoriza_task1/presentation/screens/login_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                const TopPageBackground(height: 80),
                // back button
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  children: [
                    // Welcome Quote
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
                    // row of Register and help iconButton
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
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
                    // Email  TextFormField
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: TitleOfFormField(text: 'Email'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: DefaultFormField(
                          height: 50,
                          controller: email,
                          type: TextInputType.emailAddress,
                          isPassword: false,
                          hint: '  EX. example@email.com'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 11,
                        right: 11,
                      ),
                      child: Column(
                        children: [
                          // Phone Number TextFormField
                          const TitleOfFormField(text: 'Phone Number'),
                          const SizedBox(
                            height: 5,
                          ),
                          DefaultFormField(
                            height: 50,
                            controller: email,
                            isPassword: false,
                            hint: 'EX. 812345678',
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
                          const SizedBox(
                            height: 5,
                          ),
                          // Password TextFormField
                          const TitleOfFormField(text: 'Password'),
                          const SizedBox(
                            height: 5,
                          ),
                          DefaultFormField(
                            suffix: Icons.password,
                            height: 50,
                            controller: email,
                            isPassword: false,
                            hint: 'Password',
                            type: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                    // Register and sign in buttons & Terms and Conditions Text
                    LoginButton(
                      buttonName: 'Register',
                      buttonStyle: OutlinedButton.styleFrom(
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 40)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: const Text('or',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    const LoginOutlinedButton(),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: LoginTextButton(
                            buttonName: 'Sign in here',
                            description: 'Has any accounts?',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 5,
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
      ),
    );
  }
}
