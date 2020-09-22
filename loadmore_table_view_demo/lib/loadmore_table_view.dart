import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadMoreTableView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoadMoreTableViewState();
}

class LoadMoreTableViewState extends State<LoadMoreTableView> {
  var page = 0;
  var items = new List<String>.generate(20, (index) => "Item $index");
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView.builder(
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          final widgetItem = (index == items.length)
              ? new RaisedButton(
                      onPressed: () {
                        setState(() {
                          page += 1;
                          var nextItems = new List<String>.generate(20, (index) => "Item ${index + 20 * page}");
                          items += nextItems;
                        });
                      },
                      child: new Text("Load more"),
                      color: Colors.greenAccent,
                    )
              : new ListTile(title: new Text(items[index]),);
          return widgetItem;
        },
      ),
    );
  }
}