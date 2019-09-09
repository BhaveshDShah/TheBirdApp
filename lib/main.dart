import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('The Bird App'),
          backgroundColor: Colors.blue,
        ),
        body: BirdApp(),
      ),
    ),
  );
}

class BirdApp extends StatefulWidget {
  @override
  _BirdAppState createState() => _BirdAppState();
}

class _BirdAppState extends State<BirdApp> {
  int leftChild = 4;
  int rightRight = 2;

  void changeVariable() {
    leftChild = Random().nextInt(6) + 1; // 0-5 that's why i m using + 1
    rightRight = Random().nextInt(6) + 1; // 0-5 that's why i m using + 1
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeVariable();
                });

                print('this is left');
              },
              child: Image.asset('images/test$leftChild.jpg'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    changeVariable();
                  },
                );

                print('this is right');
              },
              child: Image.asset('images/test$rightRight.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
