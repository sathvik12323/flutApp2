import 'package:flutter/material.dart';

import 'Sri.dart';

class Cons extends StatelessWidget {
  String s1 = "";
  String s2 = "";
  String s3 = "";
  String s4 = "";
  String s5 = "";
  String s6 = "";
  String s7 = "";
  String s8 = "";
  String s9 = "";
  String s10 = "";
  String image = "";
  Cons(this.s1) {
    this.s1 = s1;
  }
  Cons.vi(String xx, String ab, String cd, String de, String img, String ef,
      String gh, String hi, String jk, String kl, String image) {
    s1 = xx;
    s2 = ab;
    s3 = cd;
    s4 = de;
    s5 = img;
    s6 = ef;
    s7 = gh;
    s8 = hi;
    s9 = jk;
    s10 = kl;
    image = image;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            height: 60,
            width: 150,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(101, 28, 114, 164))),
                child: Center(child: Text(s1)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sri1.xc(
                              s2, s3, s4, s5, s6, s7, s8, s9, s10, image)));
                })));
  }
}
