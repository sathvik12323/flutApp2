// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/final.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/testingCons.dart';

String data13 = "  Choose your appropriate SYMPTOMS ";
List<int> list = [0];

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool c = false;
  Color color = Color.fromARGB(207, 47, 35, 212);

  @override
  Widget build(BuildContext context) {
    if (c) {
      color = Color.fromARGB(255, 121, 226, 2);
    } else
      color = Color.fromARGB(235, 255, 255, 255);
    return Center(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 3, 244, 232),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    height: 150,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          Padding(padding: EdgeInsets.all(10)),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: FloatingActionButton(
                                  child: Icon(Icons.navigate_before),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Vis()));
                                  },
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(1, 1, 400, 0)),
                              RichText(
                                text: TextSpan(
                                    text: data13,
                                    style: const TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.green,
                                    )),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                        ]),
                  ),
                ),
                Center(
                  child: Container(
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(525, 0, 0, 0)),
                        ExCons("1.headache", 1),
                        Padding(padding: EdgeInsets.all(10)),
                        ExCons("2.sneezing", 2),
                        Padding(padding: EdgeInsets.all(10)),
                        ExCons("3.cough", 3),
                        Padding(padding: EdgeInsets.all(10)),
                        ExCons("4.sore throat", 4),
                        Padding(padding: EdgeInsets.all(10)),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(525, 0, 0, 0)),
                    ExCons("5.vomting", 5),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("6.fever", 6),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("7.nausea", 7),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("8.diarrhea", 8),
                    Padding(padding: EdgeInsets.all(10)),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(525, 0, 0, 0)),
                    ExCons("9.chills", 9),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("10.gas", 10),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("11.aches", 11),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("12.heart\n burn", 12),
                    Padding(padding: EdgeInsets.all(10)),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(525, 0, 0, 0)),
                    ExCons("13.Blood in urine", 13),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("14.cloudy urine", 14),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("15.abdominal pains", 15),
                    Padding(padding: EdgeInsets.all(10)),
                    ExCons("16.Rash", 16),
                    Padding(padding: EdgeInsets.all(10)),
                  ],
                ),
                Padding(padding: EdgeInsets.all(3)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(700, 10, 0, 0)),
                    Container(
                      //width: 150,
                      // height: 10,
                      //  color: Color.fromARGB(255, 255, 154, 71),
                      child: Card(
                        color: Colors.greenAccent,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => last())),
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
