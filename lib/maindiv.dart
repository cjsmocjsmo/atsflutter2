import 'package:flutter/material.dart';
// import 'package:atsflutter/photobutton2.dart';

import 'footer/footercards.dart'; //for phonenumber
// import 'photobutton1.dart';
// import 'photobutton1.dart';
// import 'videobutton.dart';

import "mainvidone.dart";
import 'mainvidtwo.dart';
import 'mainvidthree.dart';
import 'message.dart';

class MainDiv extends StatelessWidget {
  const MainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideMainDiv();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalMainDiv();
        } else {
          return const SmallMainDiv();
        }
      },
    );
  }
}

class SmallMainDiv extends StatelessWidget {
  const SmallMainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 1250,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 28, 218),
              border: Border.all(
                color: Colors.greenAccent, //color of border
                width: 2, //width of border
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                phoneNumber(),
                fText("Serving ", 28),
                fText("Kitsap, Mason, Pierce", 28),
                fText("Counties", 28),
                const SmallTopOutVid(),
                const MissionText(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      SmallLogDropVid(),
                      SmallRigOutVid(),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NormalMainDiv extends StatelessWidget {
  const NormalMainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 1050,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 28, 218),
              border: Border.all(
                color: Colors.greenAccent, //color of border
                width: 2, //width of border
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                phoneNumber(),
                fText("Serving ", 28),
                fText("Kitsap, Mason, Pierce", 28),
                fText("Counties", 28),
                const MissionText(),
               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      NormalLogDropVid(),
                      NormalRigOutVid(),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



class WideMainDiv extends StatelessWidget {
  const WideMainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 75, bottom: 75),
          height: 1000,
          // width: 850,
          // alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 28, 218),
              border: Border.all(
                color: Colors.greenAccent, //color of border
                width: 2, //width of border
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                phoneNumber(),
                fText("Serving ", 28),
                fText("Kitsap, Mason, Pierce", 28),
                fText("Counties", 28),
                const MissionText(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    WideLogDropVid(),
                    WideRigOutVid(),
                    WideTopOutVid(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
