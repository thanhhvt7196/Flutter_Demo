import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tab2Stateful(),
    );
  }
}

class Tab2Stateful extends StatefulWidget {
  Tab2Stateful({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State<StatefulWidget> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2Stateful> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Text("Tab2"),
      ),
    );
  }
}