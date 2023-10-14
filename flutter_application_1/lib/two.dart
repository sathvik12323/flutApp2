// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'three.dart';

import 'Plant.dart';

class Two extends StatelessWidget {
  final dis;
  String t1, t2, t3 = "", t4 = "", t5 = "", t6 = "", t7 = "";
  String x1 = "ecch ",
      x2 = "dhow",
      x3 = "third in two.dart",
      x4 = "fourth in two.dart";
  String timg = "";
  Two(this.dis, this.t1, this.t2, this.t3, this.t4, this.t5, this.t6, this.t7,
      this.timg);

  int change = 0;
  Two.il(this.dis, this.t1, this.t2) {
    t3 = "";
    t4 = "";
    t5 = "";
    t6 = "";
    t7 = "";
    change = 1;
  }
  @override
  Widget build(BuildContext context) {
    var set = {
      Text('click this one  ',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.green, fontSize: 40)),
    };
    return ListView(
      children: [
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
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(dis),
            fit: BoxFit.contain,
          )),
          //color: Colors.lightGreenAccent,
          child: Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 2,
                //color: Colors.white,
                child: ListView(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Uses: \n',
                            style: TextStyle(
                              fontSize: 80.0,
                              color: Color.fromARGB(255, 7, 163, 20),
                            ),
                            children: [
                          TextSpan(
                              text: "->" + t1 + "\n",
                              style: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.red,
                              )),
                          TextSpan(
                              text: "->" + t2 + "\n",
                              style: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.lightBlue,
                              )),
                          TextSpan(
                              text: "->" + t3 + "\n",
                              style: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.pinkAccent,
                              )),
                          TextSpan(
                              text: "->" + t4 + "\n",
                              style: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: "->" + t5 + "\n",
                              style: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.pink,
                              )),
                          TextSpan(
                              text: "->" + t6 + "\n",
                              style: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.green,
                              )),
                          TextSpan(
                              text: "->" + t7 + "\n",
                              style: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.blue,
                              )),
                        ])),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text:
                                'If you want additional information click on this ',
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 61, 5, 5),
                            )),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Th(x1, x2, x3, x4, timg),
                              ));
                        },
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                                text: 'More',
                                style: const TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.green,
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
      ],
    );
  }
}
