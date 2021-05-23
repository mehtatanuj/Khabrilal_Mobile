import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:khabrilal/Entertainment.dart';
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
    Navigator.of(context).push(_createRoute());
  }

  void navigate1() {
    Navigator.of(context).push(_createRoute1());
  }

  void navigate3() {
    Navigator.of(context).push(_createRoute3());
  }

  void navigate4() {
    Navigator.of(context).push(_createRoute4());
  }

  void navigate5() {
    Navigator.of(context).push(_createRoute5());
  }

  void navigate6() {
    Navigator.of(context).push(_createRoute6());
  }

  void navigate7() {
    Navigator.of(context).push(_createRoute7());
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
            Container(
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
            Row(
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
            Row(
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
            Row(
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
            Column(
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
                    primary: Colors.blue[400],
                    onPrimary: Colors.black,
                  ),
                  child: Text("Technology.png"),
                  onPressed: navigate7,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute1() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2), //You can change the time here
    pageBuilder: (context, animation, secondaryAnimation) => Business(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2), //You can change the time here
    pageBuilder: (context, animation, secondaryAnimation) => General(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute3() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2), //You can change the time here
    pageBuilder: (context, animation, secondaryAnimation) => Science(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute4() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2), //You can change the time here
    pageBuilder: (context, animation, secondaryAnimation) => Sports(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute5() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2), //You can change the time here
    pageBuilder: (context, animation, secondaryAnimation) => Health(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute6() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2), //You can change the time here
    pageBuilder: (context, animation, secondaryAnimation) => Entertaiment(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute7() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 2), //You can change the time here
    pageBuilder: (context, animation, secondaryAnimation) => Technologyy(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
