import 'package:flutter/material.dart';
import 'make_pages.dart';

void main() {
  runApp(KhabriLal());
}

class KhabriLal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF111328),
        scaffoldBackgroundColor: Colors.redAccent[400],
      ),
      home: Makepages(),
    );
  }
}
