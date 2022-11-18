// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Que te hizo sentir así?",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Column(
                children: [
                  Padding(
                      child: Icon(Icons.schedule, size: 80.0),
                      padding: EdgeInsets.symmetric(horizontal: 15.0)),
                  Text("Falta de tiempo")
                ],
              ),
              Column(
                children: [
                  Padding(
                      child: Icon(Icons.settings, size: 80.0),
                      padding: EdgeInsets.symmetric(horizontal: 15.0)),
                ],
              ),
              Column(
                children: [
                  Padding(
                      child: Icon(Icons.home_filled, size: 80.0),
                      padding: EdgeInsets.symmetric(horizontal: 15.0)),
                  Text("Familia")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Column(
                children: [
                  Padding(
                      child: Icon(Icons.work, size: 80.0),
                      padding: EdgeInsets.symmetric(horizontal: 15.0)),
                  Text("Trabajo")
                ],
              ),
              Column(
                children: [
                  Padding(
                      child: Icon(Icons.group, size: 80.0),
                      padding: EdgeInsets.symmetric(horizontal: 15.0)),
                  Text("Amistades")
                ],
              ),
              Padding(
                  child: Icon(Icons.notifications, size: 80.0),
                  padding: EdgeInsets.symmetric(horizontal: 15.0)),
            ],
          )
        ],
      ),
    );
  }
}
