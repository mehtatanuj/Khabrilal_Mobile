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
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("General/$name"),
        // ),
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
                        title == null ? "Skip this" : title,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        description == null
                            ? "if you want to know a full story then you have to click on below button"
                            : description,
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
                    launch(url == null
                        ? "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.fish-marketing.com%2Fhow-to-beat-the-skip%2F&psig=AOvVaw1uOeZ_ANiV-5QDes4XToFu&ust=1621885042104000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMjJ4-PG4PACFQAAAAAdAAAAABAD"
                        : url);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
