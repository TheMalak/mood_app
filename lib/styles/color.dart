import 'package:flutter/material.dart';

LoginColor(String coloresl) {
  coloresl = coloresl.toUpperCase().replaceAll("#", "");
  if (coloresl.length == 6) {
    coloresl = "ff" + coloresl;
  }
  return Color(int.parse(coloresl, radix: 16));
}
