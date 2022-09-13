import 'package:flutter/material.dart';

class TextMessageForm extends StatefulWidget {
  const TextMessageForm({Key? key}) : super(key: key);

  @override
  State<TextMessageForm> createState() => _TextMessageFormState();
}

class _TextMessageFormState extends State<TextMessageForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Column(
        children: const <Widget>[
          Center(
            child: Text(
              "Serving ",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
