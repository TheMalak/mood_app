// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, unnecessary_const, unnecessary_new, prefer_final_fields

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RelaxPage extends StatefulWidget {
  RelaxPage({Key? key}) : super(key: key);

  @override
  State<RelaxPage> createState() => _RelaxPageState();
}

class _RelaxPageState extends State<RelaxPage> {
  late Timer _timer;
  int _start = 4;
  int _round = 1;
  int _counterTime = 0;
  String _textTitle = "Comenzar";
  bool _enabledButton = true;
  bool _endExercise = false;
  double _percent = 0;

  List<String> _text478 = [
    "Cierre la boca y coga aire por la nariz por 4 segundos",
    "Aguante la respiración por 7 segundos",
    "Exhale el aire a través de la boca por 8 Segundos"
  ];
  String _currentText = '';

  void startTimer() {
    _currentText = _text478[0];
    _textTitle = "Iniciado";
    _enabledButton = false;
    _endExercise = false;
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_round <= 3) {
          if (_start == 0 && _counterTime == 0) {
            _currentText = _text478[1];
            _percent = 0;
            _start = 7;
            _counterTime++;
            setState(() {});
          } else if (_start == 0 && _counterTime == 1) {
            _currentText = _text478[2];
            _percent = 0;
            _start = 8;
            _counterTime++;
            setState(() {});
          } else if (_start == 0 && _counterTime == 2) {
            _currentText = _text478[0];
            _percent = 0;
            _start = 4;
            _counterTime = 0;
            _round++;
            setState(() {});
          } else {
            if (_counterTime == 0) {
              _percent = _percent + 0.25;
            } else if (_counterTime == 1) {
              _percent = _percent + 0.15;
            } else {
              _percent = _percent + 0.13;
            }
            if (_percent > 1.0) _percent = 1;
            _start--;
            setState(() {});
          }
        } else {
          _enabledButton = true;
          _endExercise = true;
          _round = 1;
          _start = 4;
          _counterTime = 0;
          _textTitle = "Realizar Nuevamente";
          timer.cancel();
          setState(() {});
        }
      },
    );
  }

  @override
  void dispose() {
    setState(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: const [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                  ),
                  Text(
                    'Técnica 4-7-8',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    textAlign: TextAlign.center,
                    'Realizaremos 3 rondas de respiración para calmar la ansiedad.',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Visibility(
                visible: !_enabledButton,
                child: Column(
                  children: [
                    (_round == 4)
                        ? Container()
                        : Text(
                            "Ronda $_round",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10,
                percent: _percent,
                center: Text("$_start",
                    style:
                        TextStyle(fontSize: 100, color: Colors.grey.shade700)),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.grey,
                progressColor: Colors.deepPurple.shade300,
              ),
              SizedBox(height: 20.0),
              Visibility(
                visible: !_enabledButton,
                child: Column(
                  children: [
                    Text(
                      _currentText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: (_enabledButton) ? startTimer : null,
                child: Text(_textTitle),
              ),
              Visibility(
                visible: _endExercise,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Finalizar Ejercicio"),
                ),
              )
            ]),
      ),
    );
  }
}
