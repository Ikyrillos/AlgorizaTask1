import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'serifProBook',
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}

class TopPageBackground extends StatelessWidget {
  const TopPageBackground({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height,
      child: Image.asset(
        'assets/images/bg.png',
        fit: BoxFit.cover,
      ),
    );
  }
}

class TitleOfFormFiled extends StatelessWidget {
  const TitleOfFormFiled({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.buttonName, this.buttonStyle}) : super(key: key);
  final String buttonName;
  final ButtonStyle? buttonStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: () {},
        child: SizedBox(
          height: 43,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(buttonName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
        ),
      ),
    );
  }
}

class LoginOutlinedButton extends StatelessWidget {
  const LoginOutlinedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

// ignore: must_be_immutable
class LoginTextButton extends StatelessWidget {
  LoginTextButton(
      {Key? key,
      required this.buttonName,
      required this.description,
      required this.onPressed,
      this.fontsize})
      : super(key: key);
  final double? fontsize;
  final String description;
  final String buttonName;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          description,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontsize ?? 14,
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              buttonName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontsize ?? 13,
              ),
            )),
      ],
    );
  }
}
