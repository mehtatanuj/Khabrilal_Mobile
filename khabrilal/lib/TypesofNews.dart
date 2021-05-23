import 'package:flutter/material.dart';

class TypesofNews extends StatelessWidget {
  TypesofNews({this.mytext, this.callapi, this.onpressed});

  final String callapi;
  final String mytext;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(mytext),
            ),
          ),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.redAccent[100],
              borderRadius: BorderRadius.circular(10)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue[400],
            onPrimary: Colors.black,
          ),
          child: Text(
            callapi,
            style: TextStyle(fontFamily: 'RobotoMono'),
          ),
          onPressed: onpressed,
        ),
      ],
    );
  }
}
