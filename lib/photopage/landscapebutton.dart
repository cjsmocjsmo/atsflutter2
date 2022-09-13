import 'package:flutter/material.dart';
import 'photopage.dart';

// class PhotoGalleryButton extends StatelessWidget {
//   const PhotoGalleryButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         if (constraints.maxWidth > 1024) {
//           return const WidePhotoGalleryButton();
//         } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
//           return const NormalPhotoGalleryButton();
//         } else {
//           return const SmallPhotoGalleryButton();
//         }
//       },
//     );
//   }
// }

class NormalLandscapeButton extends StatelessWidget {
  const NormalLandscapeButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(32.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Photos"),
                          backgroundColor: Colors.blue,
                        ),
                        body: const LandscapePhotosGrid(),
                      );
                    },
                  ),
                );
              },
              child: const Text('Landscape Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}

// class WidePhotoGalleryButton extends StatelessWidget {
//   const WidePhotoGalleryButton({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(4),
//         child: Stack(
//           children: <Widget>[
//             Positioned.fill(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: <Color>[
//                       Color(0xFF0D47A1),
//                       Color(0xFF1976D2),
//                       Color(0xFF42A5F5),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 padding: const EdgeInsets.all(16.0),
//                 foregroundColor: Colors.white,
//                 textStyle: const TextStyle(fontSize: 20),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (BuildContext context) {
//                       return Scaffold(
//                         appBar: AppBar(
//                           title: const Text("Photos"),
//                           backgroundColor: Colors.blue,
//                         ),
//                         body: const LandscapePhotosGrid(),
//                       );
//                     },
//                   ),
//                 );
//               },
//               child: const Text('Photo Gallery'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SmallPhotoGalleryButton extends StatelessWidget {
//   const SmallPhotoGalleryButton({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(4),
//         child: Stack(
//           children: <Widget>[
//             Positioned.fill(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: <Color>[
//                       Color(0xFF0D47A1),
//                       Color(0xFF1976D2),
//                       Color(0xFF42A5F5),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 padding: const EdgeInsets.all(16.0),
//                 foregroundColor: Colors.white,
//                 textStyle: const TextStyle(fontSize: 20),
//               ),
//               onPressed: () {
//                 // launchUrl(url);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (BuildContext context) {
//                       return Scaffold(
//                         appBar: AppBar(
//                           title: const Text("Photos"),
//                           backgroundColor: Colors.blue,
//                         ),
//                         body: const LandscapePhotosGrid(),
//                       );
//                     },
//                   ),
//                 );
//               },
//               child: const Text('Photo Gallery'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
