import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text('Zar Oyunu'),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: ZarApp(),
    ),
  ));
}

class ZarApp extends StatefulWidget {
  @override
  _ZarAppState createState() => _ZarAppState();
}

class _ZarAppState extends State<ZarApp> {
  int ZarSayi = 1;
  int ZarSayi2 = 1;

  void ZarAt() {
    setState(() {
      ZarSayi = Random().nextInt(6) + 1;
      ZarSayi2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                ZarAt();
              },
              child: Image.asset('images/zar$ZarSayi.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                ZarAt();
              },
              child: Image.asset('images/zar$ZarSayi2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
