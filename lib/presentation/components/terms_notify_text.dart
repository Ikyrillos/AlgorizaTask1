

import 'package:flutter/material.dart';

class TermsNotifyText extends StatelessWidget {
  const TermsNotifyText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.grey),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
