import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          '7',
          style: TextStyle(
              fontFamily: 'hongkong',
              fontSize: 34,
              color: Color(0xffE8B777),
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Krave',
          style: TextStyle(
            color: Color(0xff03B1A9),
            fontFamily: 'hongkong',
            fontSize: 35,
          ),
        )
      ],
    );
  }
}
