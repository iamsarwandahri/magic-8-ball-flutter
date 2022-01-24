import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random rand = Random();
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
        ),
      ),
      body: Center(
        child: Expanded(
          child: FlatButton(
            child: Image.asset('images/ball$num.png'),
            onPressed: () {
              setState(() {
                num = rand.nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
