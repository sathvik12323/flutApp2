// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/example.dart';
import 'package:flutter_application_1/testing.dart';
//import 'transaction.g.dart';
import 'emergency.dart';
import 'Plant.dart';
import 'Cons.dart';
import 'Sri.dart';
import 'dart:collection';
import 'package:hive/hive.dart';
//import 'package:flutter_application_1/hive1.dart'
import 'package:hive_flutter/hive_flutter.dart';

late Box satya;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  //Hive.registerAdapter(TransactionAdapter());
  runApp(Jis());
}

class Xis extends StatelessWidget {
  const Xis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("hive"));
  }
}

class Jis extends StatelessWidget {
  const Jis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Vis(),
    );
  }
}

class Vis extends StatefulWidget {
  //const Vis({Key? key}) : super(key: key);
  Vis();

  @override
  State<Vis> createState() => _VisState();
}

class _VisState extends State<Vis> {
  late Box box;
  late Box pic1;
  _VisState() {
    print("vis");
    db();
  }
  //final vishal = Hive.box('database');

  db() async {
    box = await Hive.openBox('box');
    satya = await Hive.openBox('vishalDB');
    pic1 = await Hive.openBox('sathvikDB');
    // box.put('vijay', '533');
    print(box.keys);
    print('hello');
    print(box.values);
  }

  @override
  Widget build(BuildContext context) {
    var heig = AppBar().preferredSize.height;
    var ms = MediaQuery.of(context).size;
    var he = ms.height;
    Map<List, String> map = HashMap();
    List<int> vishal = [1, 3, 5, 23, 4, 2];
    vishal.sort();
    List<int> satya = [7, 9, 10, 5, 3];
    satya.sort();
    map[vishal] = "first";
    map[satya] = "second";

    return Scaffold(
        body: Container(
      height: he,
      width: ms.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/one1.jpg"),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Color.fromARGB(255, 223, 62, 62).withOpacity(0.8),
              BlendMode.dstATop),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("choose Your Age", style: TextStyle(fontSize: 50)),
          Container(
            height: he / 6,
            width: ms.width / 4,
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sc2())),
              child: Text(
                '1-14',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            height: he / 6,
            width: ms.width / 4,
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sc2())),
              child: Text(
                '15-24',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            height: he / 6,
            width: ms.width / 4,
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sc2())),
              child: Text(
                '25+',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class Sc2 extends StatelessWidget {
  const Sc2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dup(),
    );
  }
}

class Dup extends StatelessWidget {
  const Dup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var si = MediaQuery.of(context).size;
    var app = AppBar().preferredSize.height;
    var ex = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/two2.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Color.fromARGB(255, 223, 62, 62).withOpacity(0.6),
                BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: FloatingActionButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Vis()));
                  },
                ),
              ),
              Center(
                  child: Text("Choose Your Type of Problem",
                      style: TextStyle(fontSize: 50))),
              Container(
                  color: Colors.lightGreen.shade100,
                  height: ex / 6,
                  width: si.width / 4,
                  child: Center(
                      child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sc31(),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Known Disease",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ))),
              Container(
                  color: Colors.lightGreen.shade100,
                  height: ex / 6,
                  width: si.width / 4,
                  child: Center(
                      child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Example(),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "UnKnown - Disease",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ))),
              Container(
                  color: Colors.lightGreen.shade100,
                  height: ex / 6,
                  width: si.width / 4,
                  child: Center(
                      child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Jjj(),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Tips of for Plants",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ))),
              Center(
                child: Container(
                    height: ex / 6,
                    width: si.width / 4,
                    child: Center(
                        child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyApp(),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        "Emergency +",
                        style: TextStyle(fontSize: 40),
                      )),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sc31 extends StatelessWidget {
  const Sc31({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dup3(),
    );
  }
}

class Dup3 extends StatelessWidget {
  const Dup3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mss = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/three3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: FloatingActionButton(
                child: Icon(Icons.navigate_before),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Dup()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/six6.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Headache',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Cold(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/eight8.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'cold',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Cough(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(40.0)),
                    color: Color.fromARGB(255, 102, 211, 228),
                    // boxShadow: [BoxShadow(color: Colors.black45)
                  ),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/nine9.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'cough',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Acidity(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/oo2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Acidity',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5StomachPain(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/one11.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Stomach Pain',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Conjunctivitis(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/six8.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Conjunctivitis',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Dizziness(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/six9.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Dizziness',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Vomitings(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/six1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Vomitings',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Eye(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/six2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'ear piercing',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Thyroid(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/oo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Thyroid',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc4(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/six3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Common fever',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sc5Bodypain(),
                  )),
              child: Center(
                child: Container(
                  width: mss.width / 3,
                  height: mss.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(40.0)),
                      color: Color.fromARGB(255, 102, 211, 228),
                      boxShadow: [BoxShadow(color: Colors.black45)]),
                  child: Column(children: [
                    Container(
                      height: 240,
                      width: 459,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/oo1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        child: Center(
                      child: Text(
                        'Body pain',
                        style: TextStyle(fontSize: 35),
                      ),
                    ))
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Sc32 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/three3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: FloatingActionButton(
                      child: Icon(Icons.navigate_before),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Dup()));
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(60)),
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          Text("Enter Your Symptoms",
                              style: TextStyle(fontSize: 50)),
                          Padding(padding: (EdgeInsets.all(20))),
                          Container(
                            child: Center(
                                child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Symptom 1'),
                            )),
                          ),
                          Container(
                            child: Center(
                                child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Symptom 2'),
                            )),
                          ),
                          Container(
                            child: Center(
                                child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Symptom 3'),
                            )),
                          ),
                          Container(
                            child: Center(
                                child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Any Other'),
                            )),
                          ),
                          GestureDetector(
                            child: Text('Ok'),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sc5(),
                                )),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}

class Sc4 extends StatelessWidget {
  const Sc4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dup2(),
    );
  }
}

class Dup2 extends StatelessWidget {
  const Dup2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 99, 93, 93),
        child: Column(
          children: [
            Text(
              'do you have any Other Problems ?',
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 9),
            ),
            Padding(padding: EdgeInsets.all(30)),
            ElevatedButton(
                child: Text('Yes'),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Sc4x())))),
            ElevatedButton(
                child: Text('No'),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Sc5())))),
          ],
        ),
      )),
    );
  }
}

class Sc4x extends StatelessWidget {
  const Sc4x({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dup4(),
    );
  }
}

class Dup4 extends StatelessWidget {
  const Dup4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.lightGreenAccent,
        Colors.yellow,
      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      child: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: FloatingActionButton(
                child: Icon(Icons.navigate_before),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Dup3()));
                },
              ),
            ),
            ElevatedButton(
                child: Text('Sugar'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sc5(),
                    ))),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            ElevatedButton(
                child: Text('BP'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sc5(),
                    ))),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            ElevatedButton(
                child: Text('Asthma'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sc5(),
                    ))),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            ElevatedButton(
                child: Text('Fits'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sc5(),
                    ))),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            ElevatedButton(
                child: Text('Malnutrition'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sc5(),
                    ))),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'AnyOther',
              ),
            ),
            ElevatedButton(
                child: Text('Submit'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sc5(),
                    )))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    ));
  }
}

class Sc5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Headache ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Advil ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' Motrin IB ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'take a raw ', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Lemon ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: '&'),
                TextSpan(
                    text: ' Ginger ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
                TextSpan(
                    text:
                        ' grind and drink the mixture which gives you a fabulous result ',
                    style: TextStyle(color: Colors.black)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text('avoid junk foods '),
              Text('it is not good to eat ICE - creams'),
              Text('Dont be tensed '),
              Text('prefer Hot Water instead of Cold water '),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text('take one glass of milk and bread every session'),
              Text('take one chapathi as lunch and 2 idles as dinner '),
              Text('Eat Citrus fruits as far as possible '),
              Text('drink one glass of Watermelon juice in morning'),
            ],
          )),
    ));
  }
}

class Sc5Cold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Cold ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Acrivastine ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text: ' Asprin ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' podeine ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Tulasi ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text:
                        'leaves help to improve the individuals ability to fight against cold',
                    style: TextStyle(color: Colors.black)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text('stay Hydrated '),
              Text('prefer Vitamin - C food items'),
              Text('it is not good to eat ICE - creams'),
              Text('Dont be tensed '),
              Text(' sip warm liquids  '),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text('prefer OOATS '),
              Text('take one chapathi as lunch and 2 idles as dinner '),
              Text(' Take Chicken soup '),
              Text('drink Herbal tee in Evening'),
            ],
          )),
    ));
  }
}

class Sc5Cough extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Cough ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Dextronethorphan ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' pholcodine ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' prana vayu and anol udara vayu ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text:
                        ' govern the respiratory system and maintain balance ',
                    style: TextStyle(color: Colors.black)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text('have a little honey before bed '),
              Text('prefer hot water and Ginger'),
              Text('it is not good to eat ICE - creams'),
              Text('Dont be tensed '),
              Text(' prefer bitter gourds '),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text('Breakfast - 1 bowl vegetable soup + orange juice '),
              Text('Lunch - 2 pulkas with capsicum curry'),
              Text('Dinner Take Chicken soup + chichdi'),
            ],
          )),
    ));
  }
}

class Sc5Acidity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Acidity ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' protonpump inhibitors ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text: ' & reflex ',
                    style: TextStyle(color: Color.fromARGB(255, 0, 83, 43))),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' Dexlansoprazole and lansoprazole ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Mulethi and Honey ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text:
                        ' add liquorice powder to honey to form paste.( consume twice daily after meals) ',
                    style: TextStyle(color: Colors.black)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' avoid overeating '),
              Text('reduce intake of alcohol '),
              Text('drink less citrus juice '),
              Text(' improve sleeping habits '),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text('prefer OOATS + parota with green chutney as Breakfast'),
              Text(' Lunch - greerice + chicken '),
              Text(' Dinner - wheat dosa '),
            ],
          )),
    ));
  }
}

class Sc5StomachPain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Stomach Pain ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Aztreonam ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' Budesonide ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Tulasi ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text:
                        'leaves help to improve the individuals ability to fight against cold',
                    style: TextStyle(color: Colors.black)),
              ])),
              Text(
                'fennel seeds ',
                textDirection: TextDirection.ltr,
              ),
              Text(
                ' Bite cloves ',
                textDirection: TextDirection.ltr,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' consume Bananas '),
              Text('prefer Rice and bottle gourds curry'),
              Text(' take Lemon juice twice a day'),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' Breakfast - vegetable soup (1/2) cup '),
              Text('Lunch - Khichdi (1/2) cup'),
              Text('Dinner - prefer Dosa'),
            ],
          )),
    ));
  }
}

class Sc5Conjunctivitis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' Medicine ',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Conjunctivitis ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Diclofenac ',
                    style: TextStyle(color: Colors.greenAccent)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Netratarpna with herbal oil ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text:
                        'helps to improve the individuals ability to fight against Conjuncticitis ',
                    style: TextStyle(color: Colors.black)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(
                  ' stop wearing contact lenses until you cure from conjunctivitis '),
              Text(
                  'stop sharing personal items such as pillows,towds,eye glasses'),
              Text(' avoid toushing and rubbing eyes'),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' eat probioties and a diet rich in vitamins A,K and E '),
              Text(' eat rosellihemp and amarandh curries '),
            ],
          )),
    ));
  }
}

class Sc5Dizziness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Dizziness ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Dramine - 75mg ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' Cinnarizzine ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' kaunch beej amalaki ',
                    style: TextStyle(color: Colors.greenAccent)),
              ])),
              Text(
                'jatiphala',
                textDirection: TextDirection.ltr,
              ),
              Text(
                ' shanapushi ',
                textDirection: TextDirection.ltr,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' avoid using caffeine '),
              Text('do not be get tensed '),
              Text(' avoid smoking and drinking'),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text('eat regular meals '),
              Text('eat fruits daily '),
              Text('prefer high fiberfoods'),
            ],
          )),
    ));
  }
}

class Sc5Vomitings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Vomitings ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' ondansetron ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' metaclotromids ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Mint ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text: ' juice and ginger juice helps to recover fast',
                    style: TextStyle(color: Colors.black)),
              ])),
              Text(
                'drink coconut water ',
                textDirection: TextDirection.ltr,
              ),
              Text(
                ' Bite cloves ',
                textDirection: TextDirection.ltr,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' drink clear or ice cold drinks '),
              Text(' avoid fried,greavy or sweet potatoes '),
              Text(' avoid junk food and overeating'),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' prefer boiled potatoes'),
              Text(' it is better to drink lemon and honey at morning'),
              Text(' consume milk and eat bread '),
            ],
          )),
    ));
  }
}

class Sc5Eye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' eye piercing ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Ciprofloxacin ',
                    style: TextStyle(color: Colors.greenAccent)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Need drops ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(
                    text:
                        ' helps to improve the individuals ability to fight against eye pierching',
                    style: TextStyle(color: Colors.black)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' consume Bananas '),
              Text('prefer Rice and bottle gourds curry'),
              Text(' take Lemon juice twice a day'),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' Breakfast - vegetable soup (1/2) cup '),
              Text('Lunch - Khichdi (1/2) cup'),
              Text('Dinner - prefer Dosa'),
            ],
          )),
    ));
  }
}

class Sc5Thyroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Thyroid problem ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' secothyroxine ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' levo - T ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Ashwagandha ',
                    style: TextStyle(color: Colors.greenAccent)),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' get enough sleep '),
              Text(' reduce daily stress'),
              Text(' go for mornig walk '),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' take tastly morning milk and one egg'),
              Text(' prefer Nuts and table salt  '),
              Text(' eat apples, pears,plum fruits'),
            ],
          )),
    ));
  }
}

class Sc5Bodypain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'prescription',
        textDirection: TextDirection.ltr,
      )),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Medicine',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' in order to cure from the problem ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Body pains ',
                    style: TextStyle(color: Color.fromARGB(255, 76, 244, 54))),
                TextSpan(text: 'you', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' MAY ',
                    style: TextStyle(color: Color.fromARGB(255, 247, 7, 7))),
                TextSpan(
                    text: ' Use the Medicine ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: ' Asprin ',
                    style: TextStyle(color: Colors.greenAccent)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' naproxen ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 240, 105, 188))),
              ])),
              Padding(padding: EdgeInsets.all(20)),
              Text('Ayurvedic Solution',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Tulasi ',
                    style: TextStyle(color: Colors.greenAccent)),
              ])),
              Text(
                'Nilgiri ',
                textDirection: TextDirection.ltr,
              ),
              Text(
                'eucalyptos',
                textDirection: TextDirection.ltr,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text('Tips & Suggestions',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.wavy,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' consume Bananas '),
              Text('take warm bath'),
              Text(' massage with mustard oil '),
              Padding(padding: EdgeInsets.all(20)),
              Text('Diet Planning',
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.double,
                      color: Colors.green,
                      fontSize: 40)),
              Text(' drink cherry juice'),
              Text(' drink ginger tea '),
              Text(' drink honey milk or turmeric  milk'),
            ],
          )),
    ));
  }
}
