import 'package:flutter/material.dart';
import 'package:segmented_control_demo/tab1.dart';
import 'package:segmented_control_demo/tab2.dart';
import 'package:segmented_control_demo/tab3.dart';
import 'package:segmented_control_demo/tab4.dart';

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

  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("segmented control demo"),
            bottom: new TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.home), text: "Home",),
                  new Tab(icon: new Icon(Icons.group), text: "Group",),
                  new Tab(icon: new Icon(Icons.chat_bubble), text: "Chat",),
                  new Tab(icon: new Icon(Icons.cloud_queue), text: "Cloud",)
                ],
                indicatorColor: Colors.red,),
          ),
          body: new TabBarView(
              children: [
                new Tab1(),
                new Tab2(),
                new Tab3(),
                new Tab4(),
              ]
          ),
        )
    );
    return tabController;
  }
}
