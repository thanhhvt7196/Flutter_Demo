import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class URLImage extends StatefulWidget {
  // URLImage({Key key, this.url}) : super(key: key);
  // final String url;
  @override
  State<StatefulWidget> createState() => URLImageState();
}

class URLImageState extends State<URLImage> {
  var imageURLs = [
    'https://upload.wikimedia.org/wikipedia/commons/6/6e/Lactarius_indigo_48568.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/c/c2/Amanita_muscaria_%28fly_agaric%29.JPG',
    'https://upload.wikimedia.org/wikipedia/commons/f/f1/Amanita_stirps_Hemibapha_45069.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/6/65/Yellowmushrooms.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/e1/2014-02-26_Ganoderma_lingzhi_Sheng_H._Wu%2C_Y._Cao_%26_Y.C._Dai_574882.jpg'
  ];
  var selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final cachedImage = CachedNetworkImage(
    //   imageUrl: ,
    //   placeholder: (context, url) => CircularProgressIndicator(),
    //   errorWidget: (context, url, error) => Icon(Icons.error),
    // );
    final cachedImage = CachedNetworkImage(
      imageUrl: imageURLs[selectedImageIndex],
      // placeholder: (context, url) => CircularProgressIndicator(),
      placeholder: (context, url) {
        return new Center(
          child: new Container(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(),
          ),
        );
      },
      errorWidget: (context, url, error) => Icon(Icons.error),
      height: 300.0,
      width: 300,
    );
    // final cachedImage = new Image.network("https://upload.wikimedia.org/wikipedia/commons/6/6e/Lactarius_indigo_48568.jpg");
    return new Scaffold(
      appBar: new AppBar(title: new Text("demo image"),),
      body: new Container(
        child: new Column(
          children: [
            new Stack(
              children: [
                new Center(
                  child: cachedImage,
                )
              ],
            ),
            new Row(
              children: [
                new Expanded(
                  child: new RaisedButton(
                      child: new Text("back"),
                      onPressed: () {
                        setState(() {
                          selectedImageIndex = selectedImageIndex <= 0 ? selectedImageIndex: selectedImageIndex - 1;
                          print(selectedImageIndex);
                        });
                      }
                  ),
                ),
                new Expanded(
                  child: new RaisedButton(
                      child: new Text("next"),
                      onPressed: () {
                        setState(() {
                          print("abc");
                          selectedImageIndex = (selectedImageIndex >= imageURLs.length - 1) ?
                          selectedImageIndex : selectedImageIndex + 1;
                          print(selectedImageIndex);
                        });
                      }
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}