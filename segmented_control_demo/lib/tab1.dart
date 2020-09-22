import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tab1Statefull(),
      title: "Tab1",
    );
  }
}

class Tab1Statefull extends StatefulWidget {
  Tab1Statefull({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1Statefull> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Text("tab1"),
      ),
    );
  }
}
