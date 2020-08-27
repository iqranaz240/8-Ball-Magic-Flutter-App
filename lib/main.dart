import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage1(),
    );
  }
}

class BallPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Ask me anything?'),
        backgroundColor: Colors.blue,
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      _counter = Random().nextInt(4) + 1 ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Image.asset('images/ball$_counter.png'),
            onPressed: () {
              _incrementCounter();
                            },
          ),
        ),]
      ),
    );
  }
}