import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tab3Stateful(),
    );
  }
}

class Tab3Stateful extends StatefulWidget {
  Tab3Stateful({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3Stateful> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Text("tab3"),
      ),
    );
  }
}