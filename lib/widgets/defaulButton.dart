// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names, avoid_renaming_method_parameters, must_be_immutable

import 'package:flutter/material.dart';
import '../styles/color.dart';
import '../styles/fonts.dart';

class DefaultButton extends StatelessWidget {
  String title;
  dynamic onClick;

  DefaultButton({Key? key, required this.title, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
      ),
      onPressed: onClick,
      child: Text(
        title,
        style: textstyleType('p', Colors.white, true),
      ),
    );
  }
}
