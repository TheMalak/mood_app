// ignore_for_file: unused_field, unnecessary_const, unnecessary_new, prefer_final_fields

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mood_app/data/jokes.dart';

class JokesPage extends StatefulWidget {
  const JokesPage({super.key});

  @override
  State<JokesPage> createState() => _JokesPageState();
}

class _JokesPageState extends State<JokesPage> {
  late Timer _timer;
  int _start = 3;
  List<String> _jokesData = jokes;
  late String _currentJoke;
  bool _visible = true;

  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }

  @override
  void initState() {
    _currentJoke = _jokesData[random(0, _jokesData.length)];
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _visible = false;
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
    super.initState();
  }

  void startTimer() {
    _currentJoke = _jokesData[random(0, _jokesData.length)];
    _visible = true;
    _start = 2;
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _visible = false;
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Image.asset(
              "assets/emoji_laugh.gif",
              height: 125.0,
              width: 125.0,
            ),
          ),
          Text(
            _currentJoke,
            style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: startTimer, child: const Text("Dame otro chiste más")),
          const SizedBox(height: 80)
        ],
      )),
    );
  }
}
