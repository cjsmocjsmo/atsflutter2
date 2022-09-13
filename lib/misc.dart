import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

FloatingActionButton floatButton() {
  return FloatingActionButton(
    onPressed: () {
      // launchUrlString("tel://3605168933");
      launchUrlString("tel://9038201482");
    },
    tooltip: 'Call Me',
    child: const Icon(Icons.call),
  );
}

