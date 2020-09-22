import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerContentStateful extends StatefulWidget {
  DrawerContentStateful(this.displayText, this.callback);
  @override
  State<StatefulWidget> createState() => DrawerContentState();
  String displayText;
  Function(String) callback;
}

class DrawerContentState extends State<DrawerContentStateful> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        padding: EdgeInsets.zero,
        children: [
          new Container(
            height: 70,
            color: Colors.blue,
            child: new DrawerHeader(child: new Text("thanh20cm")),
          ),
          new ListTile(title: new Text("abc"), onTap: () {
            widget.callback("abc");
          },),
          new ListTile(title: new Text("xyz"), onTap: () {
            widget.callback("xyz");
          },)
        ],
      ),
    );
  }
}