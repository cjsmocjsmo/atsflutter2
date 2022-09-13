import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'datepicker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:file_picker/file_picker.dart';
// import 'file_picker.dart';

class EstimateForm extends StatefulWidget {
  const EstimateForm({Key? key}) : super(key: key);

  @override
  State<EstimateForm> createState() => _EstimateFormState();
}

class _EstimateFormState extends State<EstimateForm> {
  final _formKey = GlobalKey<FormState>();

  // Future<String> _pickFile() async {
  //   FilePickerResult? result =
  //       await FilePicker.platform.pickFiles(allowMultiple: true);
  //   if (result == null) return "";
  //   Uint8List? fileBytes = result.files.first.bytes;
  //   String fileName = result.files.first.name;
  //   var fileid = DateTime.now().millisecondsSinceEpoch.toString();
  //   final String fref = "images/${fileid}_$fileName";
  //   final storageRef = FirebaseStorage.instance.ref();
  //   final imagesRef = storageRef.child(fref);
  //   await imagesRef.putData(fileBytes as Uint8List);
  //   // var durl = await imagesRef.getDownloadURL();
  //   // final String downurl = durl.toString();
  //   return fref;
  // }


  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController citystateController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController emalController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  String? name;
  String? address;
  String? citystate;
  String? telephone;
  String? email;
  String? message;
  String? date;
  String? imgref;
  // String? downloadurl;

  final docData = {"delete": "no", "uuid": "10"};

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Center(
        child: FocusTraversalGroup(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {
              Form.of(primaryFocus!.context!)!.save();
            },
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 75)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        // hintText: 'What do people call you?',
                        labelText: 'Name',
                      ),
                      onSaved: (String? value) {
                        // debugPrint('Value for field  as "$value"');
                        name = value;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 75)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: '100 Rose Ave',
                        labelText: 'Address',
                      ),
                      onSaved: (String? value) {
                        // debugPrint('Value for field  as "$value"');
                        address = value;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 75)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Seattle WA',
                        labelText: 'City, State',
                      ),
                      onSaved: (String? value) {
                        // debugPrint('Value for field  as "$value"');
                        citystate = value;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 75)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.phone),
                        hintText: '000-000-0000',
                        labelText: 'Telephone',
                      ),
                      onSaved: (String? value) {
                        // debugPrint('Value for field  as "$value"');
                        telephone = value;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 75)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'foo@bar.com',
                        labelText: 'Email',
                      ),
                      onSaved: (String? value) {
                        // debugPrint('Value for field  as "$value"');
                        email = value;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 75)),
                    child: const DatePicker(),
                  ),
                ),

                // const Text(
                //   "Button Goes Here",
                //   style: TextStyle(
                //     fontSize: 18,
                //     color: Colors.amber,
                //   ),
                // ),

                // TextButton(
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.amber,
                //     textStyle: const TextStyle(fontSize: 20),
                //   ),
                //   onPressed: () async {
                //     imgref = await _pickFile();
                //   },
                //   child: const Text('Upload Pic or Vid'),
                // ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(200, 150)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.notes),
                        // hintText: 'foo@bar.com',
                        labelText: 'Discribe the problem',
                      ),
                      minLines: 18,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      onSaved: (String? value) {
                        debugPrint('Value for field  as "$value"');
                        message = value;
                      },
                    ),
                  ),
                ),

                Padding(
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
                                  Colors.blueAccent,
                                  // Color.fromARGB(255, 141, 29, 29),
                                  Color.fromARGB(0, 0, 0, 0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(10.0),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Processing Data")),
                              );
                            }
                            var now = DateTime.now();
                            var year = now.year;
                            var month = now.month;
                            var day = now.day;
                            var hr = now.hour;
                            var min = now.minute;
                            String est = "estimate";
                            var docname = est +
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

                            docData['name'] = name.toString();
                            docData['address'] = address.toString();
                            docData['citystate'] = citystate.toString();
                            docData['telephone'] = telephone.toString();
                            docData['email'] = email.toString();
                            docData['message'] = message.toString();
                            docData['uuid'] = uuid.toString();
                            docData['imgref'] = imgref.toString();
                            print(docData);
                            var db = FirebaseFirestore.instance;
                            db.collection("estimates").doc(docname).set(docData);
                            Navigator.pop(context);
                          },
                          child: const Center(child: Text('Schedule Estimate')),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Padding postPicButton(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.all(10.0),
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(14),
//       child: Stack(
//         children: <Widget>[
//           Positioned.fill(
//             child: Container(
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: <Color>[
//                     Color.fromARGB(0, 0, 0, 0),
//                     Colors.blueAccent,
//                     // Color.fromARGB(255, 141, 29, 29),
//                     Color.fromARGB(0, 0, 0, 0),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           TextButton(
//             style: TextButton.styleFrom(
//               padding: const EdgeInsets.all(10.0),
//               foregroundColor: Colors.white,
//               textStyle: const TextStyle(fontSize: 30),
//             ),
//             onPressed: () {
//               File_Picker();
//               Navigator.push(
//                 context,
//                 MaterialPageRoute<void>(
//                   builder: (BuildContext context) {
//                     return Scaffold(
//                         appBar: AppBar(
//                           title: const Text("Back"),
//                           backgroundColor: Colors.blue,
//                         ),
//                         body: File_Picker());
//                   },
//                 ),
//               );
//             },
//             child: const Center(child: Text('Upload Pic/Vid')),
//           ),
//         ],
//       ),
//     ),
//   );
// }
