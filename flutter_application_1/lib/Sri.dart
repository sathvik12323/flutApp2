import 'package:flutter/material.dart';

class Sri1 extends StatelessWidget {
  Sri1({super.key});
  String ki = "vishla";
  String ch = "vi";
  String hj = "si";
  String jk = "ch";
  String kl = "in";
  String lz = "se";
  String xc = "ab";
  String cv = "cg";
  String vb = "gh";
  String kb = "kh";
  Sri1.xc(String xx, String zz, String yy, String cc, String dd, String ee,
      String ff, String gg, String hh, String ll) {
    ki = xx;
    ch = zz;
    hj = yy;
    jk = cc;
    kl = dd;
    lz = ee;
    xc = ff;
    cv = gg;
    vb = hh;
    kb = ll;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Vs.mm(
      ki,
      ch,
      hj,
      jk,
      kl,
      lz,
      xc,
      cv,
      vb,
    ));
  }
}

class Vs extends StatelessWidget {
  String ni = "";
  String mi = "";
  String li = "";
  String bi = "";
  String ai = "";
  String ci = "";
  String di = "";
  String ei = "";
  String fi = "";
  Vs({super.key});
  Vs.mm(String kill, String qw, String we, String be, String ve, String ce,
      String de, String fe, String ge) {
    ni = kill;
    mi = qw;
    li = we;
    bi = be;
    ai = ve;
    ci = ce;
    di = ve;
    ei = fe;
    fi = ge;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Text(
                ni,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 66, 125, 145)),
              ),
              Text(mi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
              Text(li,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
              Text(bi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
              Text(ai,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
              Text(ci,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
              Text(di,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
              Text(ei,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
              Text(fi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 66, 125, 145))),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 3,
            //child: Image.network(bi, fit: BoxFit.fill)
          ),
        ],
      ),
    );
  }
}
