import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: gridView(),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget gridView() {
    return GridView.count(
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          // child: const Text("He'd have you all unravel at the"),
          child: Image(image: AssetImage('assets/images/jisoo.jpg'),),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          // child: const Text('Heed not the rabble'),
          child: Image(image: AssetImage('assets/images/jisoo.jpg'),),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          // child: const Text('Sound of screams but the'),
          child: Image(image: AssetImage('assets/images/jisoo.jpg'),),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          // child: const Text('Who scream'),
          child: Image(image: AssetImage('assets/images/jisoo.jpg'),),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          // child: const Text('Revolution is coming...'),
          child: Image(image: AssetImage('assets/images/jisoo.jpg'),),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          // child: const Text('Revolution, they...'),
          child: Image(image: AssetImage('assets/images/jisoo.jpg'),),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}
