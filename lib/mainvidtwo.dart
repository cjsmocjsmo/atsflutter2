import 'package:flutter/material.dart';
import 'vids/smallrigout.dart';

class RigOutVid extends StatelessWidget {
  const RigOutVid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideRigOutVid();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalRigOutVid();
        } else {
          return const SmallRigOutVid();
        }
      },
    );
  }
}

class SmallRigOutVid extends StatelessWidget {
  const SmallRigOutVid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 231.0,
        width: 130.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('images/smallrigout_overlay.webp'),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text(""),
                      backgroundColor: Colors.blue,
                    ),
                    body: const SmallRigOutVidPlayer(),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class NormalRigOutVid extends StatelessWidget {
  const NormalRigOutVid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 533.0,
        width: 300.0,
        // height: 391.0,
        // width: 220.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('images/smallrigout_overlay.webp'),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text(""),
                      backgroundColor: Colors.blue,
                    ),
                    body: const SmallRigOutVidPlayer(),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class WideRigOutVid extends StatelessWidget {
  const WideRigOutVid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text(""),
                      backgroundColor: Colors.blue,
                    ),
                    body: const SmallRigOutVidPlayer(),
                  );
                },
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(top: 90.0),
            height: 450,
            width: 300,
            // alignment: const Alignment(0, 0),
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.redAccent, //color of border
            //     width: 5, //width of border
            //   ),
            //   borderRadius: BorderRadius.circular(30),
            // ),
            child: Image.network(
                'https://alphatreeio.xyz/images/webp/smallrigout_overlay.webp'),
          ),
        ),
        const Text(
          "Small Rig Out",
          style: TextStyle(
            inherit: false,
            fontSize: 22.0,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
