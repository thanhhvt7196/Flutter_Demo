import 'package:flutter/material.dart';
import 'package:navigation_drawer_demo/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = "";
  callback(String text) {
    setState(() {
      Navigator.pop(context);
      displayText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final DrawerContentStateful drawerContent = new DrawerContentStateful(displayText, callback);
    var drawer = new Drawer(child: drawerContent,);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(displayText),
          ],
        ),
      ),
      drawer: drawer,
    );
  }
}
