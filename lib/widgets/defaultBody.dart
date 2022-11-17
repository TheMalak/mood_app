import 'package:flutter/material.dart';

import 'bottomAppBarDefault.dart';

class MoodScaffold extends StatelessWidget {
  Widget child = Container();

  MoodScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const MoodBottomBar(),
        body: SafeArea(child: child));
  }
}
