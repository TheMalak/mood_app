// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

Color primaryColor = Colors.deepPurple.shade300;

LoginColor(String coloresl) {
  coloresl = coloresl.toUpperCase().replaceAll("#", "");
  if (coloresl.length == 6) {
    coloresl = "ff" + coloresl;
  }
  return Color(int.parse(coloresl, radix: 16));
}

Container gradientContainer(Widget data) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          LoginColor("f3e5f5"),
          LoginColor("ffffff"),
          LoginColor("e8f7fd")
          //mente sana sin escala
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
    ),
    child: data,
  );
}
