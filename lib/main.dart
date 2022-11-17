import 'package:flutter/material.dart';
import 'package:mood_app/widgets/defaultBody.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MoodScaffold(
        child: Container(),
      ),
    );
  }
}
