import 'package:flutter/material.dart';

class ScaffoldMoodApp extends StatelessWidget {
  Widget child = Container();

  ScaffoldMoodApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: child));
  }
}
