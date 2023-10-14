import 'package:flutter/material.dart';

import 'Plant.dart';

class Th extends StatelessWidget {
  String s1 = "";
  String s2 = "";
  String s3 = "";
  String s4 = "";
  String img = "";
  Th(String a1, String a2, String a3, String a4, String im) {
    s1 = a1;
    s2 = a2;
    s3 = a3;
    s4 = a4;
    img = im;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.lightGreen],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(img),
              //fit: BoxFit.contain,
            )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: FloatingActionButton(
              child: Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Jjj()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
