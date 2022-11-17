// ignore_for_file: prefer_const_constructors

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
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
    HomePage(),
    ListPage(),
    ProgressPage(),
    StatsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.deepPurple.shade300,
          initialActiveIndex: _currentPage,
          disableDefaultTabController: true,
          elevation: 0.0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            TabItem(icon: Icons.home, title: 'Inicio'),
            TabItem(icon: Icons.checklist_rounded, title: 'Tareas'),
            TabItem(
                icon: Icons.sentiment_satisfied_alt_outlined,
                title: 'Progreso'),
            TabItem(icon: Icons.stacked_bar_chart_sharp, title: 'Estadísticas'),
            TabItem(icon: Icons.person_sharp, title: 'Perfil'),
          ],
          onTap: (int i) {
            setState(() {
              _currentPage = i;
            });
          },
        ),
        body: SafeArea(child: _pages[_currentPage]));
  }
}
