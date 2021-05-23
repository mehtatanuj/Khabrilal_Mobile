import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondRoute extends StatelessWidget {
  SecondRoute(
      {this.name,
      this.description,
      this.content,
      this.url,
      this.title,
      this.urltoimage});
  final String title;
  final String name;
  final String description;
  final String content;
  final String url;
  final String urltoimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("General/$name"),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("images/Background.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Card(
                child: Image.network(
                  urltoimage == null
                      ? "https://previews.123rf.com/images/urfandadashov/urfandadashov1805/urfandadashov180500070/100957966-photo-not-available-icon-isolated-on-white-background-vector-illustration.jpg"
                      : urltoimage,
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
            ),
            Expanded(
              flex: 5,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                color: Colors.white,
              ),
            ),
            Expanded(
              child: FlatButton(
                height: 100,
                child: Text(
                  "Inside Story",
                  style: TextStyle(fontSize: 30),
                ),
                color: Colors.purple[900],
                onPressed: () {
                  launch(url);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
