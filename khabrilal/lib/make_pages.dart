import 'package:flutter/material.dart';
import 'package:khabrilal/General.dart';
import 'TypesofNews.dart';

import 'businessman.dart';
import 'Science.dart';
import 'Technology.dart';
import 'Sports.dart';

import 'Heatth.dart';

class Makepages extends StatefulWidget {
  @override
  _MakepagesState createState() => _MakepagesState();
}

const Color colour = Color(0xFF00838F);

class _MakepagesState extends State<Makepages> {
  final String url =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=66d32636865145ea86ee42e763afc5f8";
  @override
  void initState() {
    super.initState();
  }

  void navigate() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => General(),
      ),
    );
  }

  void navigate1() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Business()),
    );
  }

  void navigate2() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Science()),
    );
  }

  void navigate3() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Technology()),
    );
  }

  void navigate4() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Sports()),
    );
  }

  void navigate5() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => General()),
    );
  }

  void navigate6() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Health()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Khabrilal"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage("images/BANNER2.png"),
                  ),
                ),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.redAccent[100],
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TypesofNews(
                      mytext: "images/General.png",
                      callapi: "General",
                      onpressed: navigate,
                    ),
                  ),
                  Expanded(
                    child: TypesofNews(
                      mytext: "images/Business.png",
                      callapi: "Business",
                      onpressed: navigate1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TypesofNews(
                      mytext: "images/Entertainment.png",
                      callapi: "entertainment",
                      onpressed: navigate6,
                    ),
                  ),
                  Expanded(
                    child: TypesofNews(
                      mytext: "images/Health.png",
                      callapi: "Health",
                      onpressed: navigate5,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TypesofNews(
                      mytext: "images/Science.png",
                      callapi: "Science",
                      onpressed: navigate3,
                    ),
                  ),
                  Expanded(
                    child: TypesofNews(
                        mytext: "images/Sports.png",
                        callapi: "Sports",
                        onpressed: navigate4),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage("images/Technology.png"),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(80, 0, 80, 0),
                    decoration: BoxDecoration(
                        color: Colors.redAccent[100],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[800],
                      onPrimary: Colors.white,
                    ),
                    child: Text("Technology.png"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Technology()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
