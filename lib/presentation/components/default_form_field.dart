import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  // Function? onSubmit,
  void Function(String)? onChange,
  String? Function(String?)? validate,
  required String label,

  /// can be iconData or widget
  IconData? prefix,
  bool isPassword = false,
  IconData? suffix,
  Function? suffixPressed,
  Widget? prefixWidget,
  onTap,
  // bool enabled = true,
  bool readOnly = false,
}) =>
    TextFormField(
      cursorRadius: const Radius.circular(10.0),
      // validator: (s) {
      //   validate(s);
      // },
      validator: validate,
      textInputAction: TextInputAction.next,
      readOnly: readOnly,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      // onFieldSubmitted: (S) {
      //   onSubmit!(S);
      // },

      onChanged: onChange,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: prefix == null ? prefixWidget : Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: () {
                  suffixPressed!();
                },
              )
            : null,
      ),
    );

// ignore: must_be_immutable
class DefaultFormField extends StatelessWidget {
  DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
    required this.isPassword,
    this.label,
    this.hint,
    this.validate,
    this.onChange,
    this.prefixWidget,
    this.prefix,
    this.width,
    this.height,
    this.suffix,
  }) : super(key: key);

  double? width;
  double? height;
  TextEditingController controller;
  TextInputType type;
  // Function? onSubmit,
  void Function(String)? onChange;
  String? Function(String?)? validate;
  String? label;
  String? hint;

  /// can be iconData or widget
  IconData? prefix;
  var isPassword = false;
  IconData? suffix;
  Function? suffixPressed;
  Widget? prefixWidget;
  void Function()? onTap;
  // bool enabled = true,
  var readOnly = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 60,
      child: TextFormField(
        cursorRadius: const Radius.circular(10.0),
        // validator: (s) {
        //   validate(s);
        // },
        validator: validate,
        textInputAction: TextInputAction.next,
        readOnly: readOnly,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        // onFieldSubmitted: (S) {
        //   onSubmit!(S);
        // },

        onChanged: onChange,
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hint ,
          labelText: label,
          border: const OutlineInputBorder(),
          prefixIcon: prefix == null ? prefixWidget : Icon(prefix),
          suffixIcon: suffix != null
              ? IconButton(
                  icon: Icon(suffix),
                  onPressed: () {
                    if(suffixPressed != null) {
                      suffixPressed!();
                    }
                  },
                )
              : null,
        ),
      ),
    );
  }
}
