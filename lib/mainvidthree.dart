import 'package:flutter/material.dart';
import 'vids/topout.dart';

class TopOutVid extends StatelessWidget {
  const TopOutVid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideTopOutVid();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalTopOutVid();
        } else {
          return const SmallTopOutVid();
        }
      },
    );
  }
}

class SmallTopOutVid extends StatelessWidget {
  const SmallTopOutVid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 358.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('images/topout_overlay.webp'),
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
                    body: const TopOutVideoPlayer(),
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

class NormalTopOutVid extends StatelessWidget {
  const NormalTopOutVid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 531.0,
        width: 300.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('images/topout_overlay.webp'),
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
                    body: const TopOutVideoPlayer(),
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

class WideTopOutVid extends StatelessWidget {
  const WideTopOutVid({Key? key}) : super(key: key);
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
                    body: const TopOutVideoPlayer(),
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
                'https://alphatreeio.xyz/images/webp/topout_overlay.webp'),
          ),
        ),
        const Text(
          "Top Out",
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
