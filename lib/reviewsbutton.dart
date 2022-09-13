import 'package:flutter/material.dart';
import 'forms/reviewsform.dart';

class ReviewsButton extends StatelessWidget {
  const ReviewsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideReviewsButton();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalReviewsButton();
        } else {
          return const SmallReviewsButton();
        }
      },
    );
  }
}

class NormalReviewsButton extends StatelessWidget {
  const NormalReviewsButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(255, 17, 209, 42),
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
                          title: const Text("Reviews"),
                          backgroundColor: Colors.blue,
                        ),
                        body: const ReviewsForm(),
                      );
                    },
                  ),
                );
              },
              child: const Center(child: Text('Post A Review')),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallReviewsButton extends StatelessWidget {
  const SmallReviewsButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(255, 17, 209, 42),
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
                          title: const Text("Reviews"),
                          backgroundColor: Colors.blue,
                        ),
                        body: const ReviewsForm(),
                      );
                    },
                  ),
                );
              },
              child: const Center(child: Text('Post A Review')),
            ),
          ],
        ),
      ),
    );
  }
}

class WideReviewsButton extends StatelessWidget {
  const WideReviewsButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(255, 17, 209, 42),
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
                          title: const Text("Reviews"),
                          backgroundColor: Colors.blue,
                        ),
                        body: const ReviewsForm(),
                      );
                    },
                  ),
                );
                // final Uri url2 =
                //     Uri.parse("https://alphatreeservicevids.pages.dev");
                // launchUrl(url2);
              },
              child: const Center(child: Text('Post A Review')),
            ),
          ],
        ),
      ),
    );
  }
}
