import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewsForm extends StatefulWidget {
  const ReviewsForm({Key? key}) : super(key: key);

  @override
  State<ReviewsForm> createState() => _ReviewsFormState();
}

class _ReviewsFormState extends State<ReviewsForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emalController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  String? name;

  String? email;
  String? message;
  final docData = {
    "approved": "no",
    "delete": "no",
    "quarintine": "yes",
    "date": DateTime.now().toString(),
    "uuid": "10",
    "imgref": "none",
  };

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Center(
            child: FocusTraversalGroup(
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                onChanged: () {
                  Form.of(primaryFocus!.context!)!.save();
                },
                child: Wrap(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(const Size(200, 50)),
                        child: TextFormField(
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return "A name is required";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'First name',
                          ),
                          onSaved: (String? value) {
                            name = value;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(const Size(200, 50)),
                        child: TextFormField(
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return "email address is required";
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            icon: Icon(Icons.person),
                            hintText: 'foo@bar.com',
                            labelText: 'email',
                          ),
                          onSaved: (String? value) {
                            email = value;
                          },
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(const Size(400, 200)),
                            child: TextFormField(
                              minLines: 18,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              onSaved: (String? value) {
                                message = value;
                              },
                            ),
                          ),
                        ),
                        const Text(
                          "Leave A Review",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
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
                            Colors.blueAccent,
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
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Processing Data")),
                        );
                      }
                      var now = DateTime.now();
                      var year = now.year;
                      var month = now.month;
                      var day = now.day;
                      var hr = now.hour;
                      var min = now.minute;
                      String revs = "reviews";
                      var docname = revs +
                          year.toString() +
                          month.toString() +
                          day.toString() +
                          hr.toString() +
                          min.toString();
                      var uuid = year.toString() +
                          month.toString() +
                          day.toString() +
                          hr.toString() +
                          min.toString();
                      docData["name"] = name.toString();
                      docData["email"] = email.toString();
                      docData['sig'] = name.toString();
                      docData['message'] = message.toString();
                      docData['uuid'] = uuid.toString();
                      var db = FirebaseFirestore.instance;
                      db.collection("reviews").doc(docname).set(docData);
                      Navigator.pop(context);
                    },
                    child: const Center(child: Text('Post Review')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

