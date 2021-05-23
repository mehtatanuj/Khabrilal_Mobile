import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'routenavi.dart';

// import 'package:simple_url_preview/simple_url_preview.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  // String itsMyUrl;
  // openurl(String itsMyUrl) async {
  //   if (await canLaunch(itsMyUrl)) {
  //     await launch(itsMyUrl);
  //   } else {
  //     throw 'Could Not Launch Url';
  //   }
  // }

  final String url =
      "https://newsapi.org/v2/top-headlines?country=in&category=technology&apiKey=66d32636865145ea86ee42e763afc5f8";
  List data;
  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "Application/json"});
    print(response.body);
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['articles'];
    });
    return "SUCCESS";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 1.0, vertical: 2.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondRoute(
                        name: data[index]['source']['name'],
                        content: data[index]["content"],
                        description: data[index]["description"],
                        url: data[index]["url"],
                        title: data[index]["title"],
                        urltoimage: data[index]["urlToImage"],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  width: 80,
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(data[index]['urlToImage'] ==
                                    null
                                ? "https://previews.123rf.com/images/urfandadashov/urfandadashov1805/urfandadashov180500070/100957966-photo-not-available-icon-isolated-on-white-background-vector-illustration.jpg"
                                : data[index]['urlToImage']),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data[index]['title'] == null
                                    ? "I Think This is a Wrong News"
                                    : data[index]['title'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(data[index]['publishedAt'] == null
                                  ? DateTime.now()
                                  : data[index]['publishedAt']),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
