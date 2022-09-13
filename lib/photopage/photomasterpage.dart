import 'package:flutter/material.dart';
import 'landscapebutton.dart';
import 'portraitbutton.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          NormalLandscapeButton(),
          NormalPortraitButton()
        ],
      ),

      // Container(
      //   decoration: BoxDecoration(
      //     color: Colors.lightGreenAccent.shade400,
      //   ),
      //   child: const TabBarView(
      //     children: [
      //       // PortraitPhotosGrid(),
      //       // LandscapePhotosGrid(),

      //     ],
      //   ),
      // ),
    );
  }
}
