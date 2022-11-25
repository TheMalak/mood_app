// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mood_app/styles/color.dart';
import '../pages/pages.dart';

class MoodScaffold extends StatefulWidget {
  MoodScaffold({super.key});

  @override
  State<MoodScaffold> createState() => _MoodScaffoldState();
}

class _MoodScaffoldState extends State<MoodScaffold> {
  int _currentPage = 2;
  // ignore: prefer_final_fields
  List<Widget> _pages = [
    // HomePage(),
    // ListPage(),
    RelaxPage(),
    DescriptionPage(),
    // ProgressPage(),
    JokesPage(),
    StatsPage(),
    RelaxSongsPage()
    // ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: primaryColor,
          initialActiveIndex: _currentPage,
          disableDefaultTabController: true,
          elevation: 0.0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            TabItem(icon: Icons.home, title: 'Inicio'),
            TabItem(icon: Icons.checklist_rounded, title: 'Notas'),
            TabItem(
                icon: Icons.sentiment_satisfied_alt_outlined, title: 'Ánimo'),
            TabItem(icon: Icons.stacked_bar_chart_sharp, title: 'Estadísticas'),
            TabItem(icon: Icons.person_sharp, title: 'Perfil'),
          ],
          onTap: (int i) {
            setState(() {
              _currentPage = i;
            });
          },
        ),
        body: gradientContainer(SafeArea(child: _pages[_currentPage])));
  }
}
