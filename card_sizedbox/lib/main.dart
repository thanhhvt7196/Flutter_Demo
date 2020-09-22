import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: [
          new ListTile(
            title: new Text("thanh20cm", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.cyan),),
            leading: new Icon(Icons.account_box, color: Colors.blue, size: 26,),
            subtitle: new Text("thanhabc"),
          ),
          new Divider(color: Colors.grey),
          new ListTile(
            title: new Text("thanhhvt7196@gmail.com", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.cyan),),
            leading: new Icon(Icons.email, color: Colors.blue, size: 26,),
          ),
          new Divider(color: Colors.grey),
          new ListTile(
            title: new Text("0396021210", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.cyan),),
            leading: new Icon(Icons.phone, color: Colors.blue, size: 26,),
          ),
        ],
      ),
    );
    var sizedBox = new Container(
      child: new SizedBox(
        height: 230,
        child: card,
      ),
    );

    var center = new Center(
      child: sizedBox,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("card layout")
        ),
        body: center,
      ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
