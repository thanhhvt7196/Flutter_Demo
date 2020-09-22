import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tab4Stateful(),
    );
  }
}

class Tab4Stateful extends StatefulWidget {
  Tab4Stateful({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _Tab4State();
}

class _Tab4State extends State<Tab4Stateful> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Text("tab4"),
      ),
    );
  }
}