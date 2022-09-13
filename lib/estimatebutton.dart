import 'package:flutter/material.dart';
import 'forms/estimateform.dart';

class EstimateButton extends StatelessWidget {
  const EstimateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideEstimateButton();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalEstimateButton();
        } else {
          return const SmallEstimateButton();
        }
      },
    );
  }
}

class NormalEstimateButton extends StatelessWidget {
  const NormalEstimateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(255, 141, 29, 29),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Estimate"),
                          backgroundColor: Colors.blue,
                        ),
                        body: const EstimateForm(),
                      );
                    },
                  ),
                );
              },
              child: const Center(child: Text('Schedule An Estimate')),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallEstimateButton extends StatelessWidget {
  const SmallEstimateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(255, 141, 29, 29),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Estimate"),
                          backgroundColor: Colors.blue,
                        ),
                        body: const EstimateForm(),
                      );
                    },
                  ),
                );
              },
              child: const Center(child: Text('Schedule An Estimate')),
            ),
          ],
        ),
      ),
    );
  }
}

class WideEstimateButton extends StatelessWidget {
  const WideEstimateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(255, 141, 29, 29),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Estimate"),
                          backgroundColor: Colors.blue,
                        ),
                        body: const EstimateForm(),
                      );
                    },
                  ),
                );
                // final Uri url2 =
                //     Uri.parse("https://alphatreeservicevids.pages.dev");
                // launchUrl(url2);
              },
              child: const Center(child: Text('Schedule An Estimate')),
            ),
          ],
        ),
      ),
    );
  }
}
