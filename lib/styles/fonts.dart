import 'package:flutter/material.dart';
import '../app_config.dart';

TextStyle textstyleType(String? textType, Color color, bool center) {
  final Map<String, dynamic> headings = {
    'h1': TextStyle(
      color: color,
      fontSize: 25.0,
      fontWeight: FontWeight.w600,
    ),
    'h2': TextStyle(
      color: color,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    'h3': TextStyle(
      color: color,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    'h4': TextStyle(
      color: color,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
    'h5': TextStyle(
      color: color,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
    'p': TextStyle(
      color: color,
      fontSize: defaultTextSize,
      fontWeight: FontWeight.w400,
    ),
    'p-bold': TextStyle(
      color: color,
      fontSize: defaultTextSize,
      fontWeight: FontWeight.w600,
    ),
    'span': TextStyle(
      color: color,
      fontSize: 11.0,
      fontWeight: FontWeight.normal,
    ),
    'span-bold': TextStyle(
      color: color,
      fontSize: 11.0,
      fontWeight: FontWeight.w600,
    ),
  };

  return (textType == null) ? headings['p'] : headings[textType];
}
