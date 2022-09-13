import 'package:flutter/material.dart';
import 'vids/logdropvideo.dart';

class LogDropVid extends StatelessWidget {
  const LogDropVid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideLogDropVid();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalLogDropVid();
        } else {
          return const SmallLogDropVid();
        }
      },
    );
  }
}

class SmallLogDropVid extends StatelessWidget {
  const SmallLogDropVid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          height: 231.0,
          width: 130.0,
          // alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('images/logdrop_overlay.webp'),
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
                      body: const LogDropVidPlayer(),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class NormalLogDropVid extends StatelessWidget {
  const NormalLogDropVid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 533.0,
        width: 300.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('images/logdrop_overlay.webp'),
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
                    body: const LogDropVidPlayer(),
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

class WideLogDropVid extends StatelessWidget {
  const WideLogDropVid({Key? key}) : super(key: key);
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
                    body: const LogDropVidPlayer(),
                  );
                },
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(top: 90.0),
            height: 450,
            width: 300,
            alignment: const Alignment(0, 0),
            decoration: BoxDecoration(
              // border: Border.all(
              //   color: Colors.redAccent, //color of border
              //   width: 3, //width of border
              // ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(
                'https://alphatreeio.xyz/images/webp/logdrop_overlay.webp'),
          ),
        ),
        const Text(
          "Log Drop",
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
