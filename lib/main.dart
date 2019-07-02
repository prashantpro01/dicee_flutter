import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // ignore: non_constant_identifier_names
  int LeftDiceNumber = 1;
  int RightDiceNumber = 2;// ignore: non_constant_identifier_names

  void changeDiceFace() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    // ignore: non_constant_identifier_names


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}



