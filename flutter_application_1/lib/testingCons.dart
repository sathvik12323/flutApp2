// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/testing.dart';

class dupExCons extends StatefulWidget {
  late String name = "satya";
  late int id;
  dupExCons.v(String str, int id) {
    name = str;
    this.id = id;
  }

  dupExCons(String s, {Key? key}) : super(key: key);

  @override
  State<dupExCons> createState() => _dupExConsState();
}

class _dupExConsState extends State<dupExCons> {
  String str = "name";
  bool c = false;
  Color color = Color.fromARGB(207, 47, 35, 212);

  @override
  Widget build(BuildContext context) {
    if (c) {
      color = Color.fromARGB(255, 121, 226, 2);
      list.add(widget.id);
      list.sort();
    } else {
      color = Color.fromARGB(235, 255, 255, 255);
      list.remove(widget.id);
      list.sort();
    }
    return Container(
      height: 100,
      width: 110,
      color: color,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            c = !c;
            // data24 += "vsihal";
          });
        },
        child: Center(
            child: Text(
          widget.name,
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        )),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }
}

class ExCons extends StatelessWidget {
  String str = "Hello";
  int id = 0;
  ExCons(String str, int id) {
    this.str = str;
    this.id = id;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: dupExCons.v(str, id));
  }
}
