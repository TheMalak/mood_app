// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import '../styles/fonts.dart';
import '../widgets/defaulButton.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning, size: 100.0),
          SizedBox(height: 10.0),
          Text("Relajación Tántrica",
              style: textstyleType('h1', Colors.black, false)),
          SizedBox(height: 10.0),
          Text("Descripción", style: textstyleType('h2', Colors.black, false)),
          SizedBox(height: 10.0),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec blandit justo vitae enim interdum, vitae vulputate magna scelerisque. Morbi finibus hendrerit eros non bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
            style: textstyleType('p', Colors.black, true),
          ),
          SizedBox(height: 10.0),
          DefaultButton(title: "Comenzar", onClick: null)
        ],
      )),
    );
  }
}
