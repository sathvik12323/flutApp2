import 'package:flutter/material.dart';
import 'two.dart';

class Rogam extends StatelessWidget {
  Rogam(this.name);
  final name;
  String des = "yes";
  String t1 = "";
  String t2 = "";
  String t3 = "";
  String t4 = "";
  String t5 = "";
  String t6 = "";
  String t7 = "";
  int i = 0;

  String oimg = "";
  Rogam.vish(this.name, String des, String t1, String t2, String t3, String t4,
      String t5, String t6, String t7, String prev) {
    this.des = des;
    this.t1 = t1;
    this.t2 = t2;
    this.t3 = t3;
    this.t4 = t4;
    this.t5 = t5;
    this.t6 = t6;
    this.t7 = t7;
    oimg = prev;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 50,
        //color: Colors.orange.shade200,
        child: Card(
          // color: Colors.green,
          elevation: 25,
          // shadowColor: Colors.deepOrange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ElevatedButton(
            child: Text(name),
            onPressed: () {
              if (i == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (Two(des, t1, t2, t3, t4, t5, t6, t7, oimg))));
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (Two.il(des, t1, t2))));
              }
            },
          ),
        ),
      ),
    );
  }
}
