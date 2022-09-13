import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'reviewsbutton.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideReview();
        // } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
        //   return const NormalReview();
        } else {
          return const SmallReview();
        }
      },
    );
  }
}

class SmallReview extends StatelessWidget {
  const SmallReview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// Column smallReviewsDiv(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 500,
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
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("reviews")
                  .where("approved", isEqualTo: 'yes')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                return !snapshot.hasData
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot data = snapshot.data!.docs[index];
                          return ASmallReview(
                            approved: data["approved"],
                            date: data["date"],
                            delete: data["delete"],
                            email: data["email"],
                            imgref: data["imgref"],
                            message: data["message"],
                            name: data["name"],
                            quarintine: data["quarintine"],
                            sig: data["sig"],
                            uuid: data["uuid"],
                          );
                        },
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ASmallReview extends StatefulWidget {
  final String approved;
  final String delete;
  final String email;
  final String message;
  final String name;
  final String quarintine;
  final String sig;
  final String uuid;
  final String date;
  final String imgref;

  const ASmallReview({
    Key? key,
    required this.approved,
    required this.delete,
    required this.email,
    required this.message,
    required this.name,
    required this.quarintine,
    required this.sig,
    required this.uuid,
    required this.date,
    required this.imgref,
  }) : super(key: key);

  @override
  ASmallReviewState createState() => ASmallReviewState();
}

class ASmallReviewState extends State<ASmallReview> {
  @override
  Widget build(BuildContext context) {
    return SmallReviewCard(message: widget.message, sig: widget.sig);
  }
}

class SmallReviewCard extends StatelessWidget {
  const SmallReviewCard({Key? key, required this.message, required this.sig})
      : super(key: key);
  final String message;
  final String sig;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListTile(
              // leading: Icon(Icons.album),
              title: Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  sig,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NormalReview extends StatelessWidget {
  const NormalReview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// Column NormalReviewsDiv(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 500,
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
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("reviews")
                  .where("Approved", isEqualTo: 'yes')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                return !snapshot.hasData
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot data = snapshot.data!.docs[index];
                          return ANormalReview(
                            approved: data["approved"],
                            date: data["date"],
                            delete: data["delete"],
                            email: data["email"],
                            imgref: data["imgref"],
                            message: data["message"],
                            name: data["name"],
                            quarintine: data["quarintine"],
                            sig: data["sig"],
                            uuid: data["uuid"],
                          );
                        },
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ANormalReview extends StatefulWidget {
  final String approved;
  final String delete;
  final String email;
  final String message;
  final String name;
  final String quarintine;
  final String sig;
  final String uuid;
  final String date;
  final String imgref;

  const ANormalReview({
    Key? key,
    required this.approved,
    required this.delete,
    required this.email,
    required this.message,
    required this.name,
    required this.quarintine,
    required this.sig,
    required this.uuid,
    required this.date,
    required this.imgref,
  }) : super(key: key);

  @override
  ANormalReviewState createState() => ANormalReviewState();
}

class ANormalReviewState extends State<ANormalReview> {
  @override
  Widget build(BuildContext context) {
    return NormalReviewCard(message: widget.message, sig: widget.sig);
  }
}

class NormalReviewCard extends StatelessWidget {
  const NormalReviewCard({Key? key, required this.message, required this.sig})
      : super(key: key);
  final String message;
  final String sig;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              // leading: Icon(Icons.album),
              title: Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  sig,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WideReview extends StatelessWidget {
  const WideReview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // const SizedBox(width: 10, height: 50),
        // const WideReviewsButton(),
        // const SizedBox(width: 15, height: 10),
        Container(
          // margin: const EdgeInsets.only(left: 20),
          height: 345,
          width: 500,
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
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("reviews")
                  .where("approved", isEqualTo: 'yes')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                return !snapshot.hasData
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot data = snapshot.data!.docs[index];
                          return AWideReview(
                            approved: data["approved"],
                            date: data["date"],
                            delete: data["delete"],
                            email: data["email"],
                            imgref: data["imgref"],
                            message: data["message"],
                            name: data["name"],
                            quarintine: data["quarintine"],
                            sig: data["sig"],
                            uuid: data["uuid"],
                          );
                        },
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class AWideReview extends StatefulWidget {
  final String approved;
  final String delete;
  final String email;
  final String message;
  final String name;
  final String quarintine;
  final String sig;
  final String uuid;
  final String date;
  final String imgref;

  const AWideReview({
    Key? key,
    required this.approved,
    required this.delete,
    required this.email,
    required this.message,
    required this.name,
    required this.quarintine,
    required this.sig,
    required this.uuid,
    required this.date,
    required this.imgref,
  }) : super(key: key);

  @override
  AWideReviewState createState() => AWideReviewState();
}

class AWideReviewState extends State<AWideReview> {
  @override
  Widget build(BuildContext context) {
    return WideReviewCard(message: widget.message, sig: widget.sig);
  }
}

class WideReviewCard extends StatelessWidget {
  const WideReviewCard({Key? key, required this.message, required this.sig})
      : super(key: key);
  final String message;
  final String sig;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              // leading: Icon(Icons.album),
              title: Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  sig,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
