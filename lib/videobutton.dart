// import 'package:flutter/material.dart';
// // import '/vids/smallvidpage.dart';
// import 'atsflutteryoutube.dart';

// class VideoGalleryButton extends StatelessWidget {
//   const VideoGalleryButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         if (constraints.maxWidth > 1024) {
//           return const WideVideoGalleryButton();
//         } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
//           return const NormalVideoGalleryButton();
//         } else {
//           return const SmallVideoGalleryButton();
//         }
//       },
//     );
//   }
// }

// class SmallVideoGalleryButton extends StatelessWidget {
//   const SmallVideoGalleryButton({Key? key}) : super(key: key);
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
//                           title: const Text("Videos"),
//                           backgroundColor: Colors.blue,
//                         ),
//                         // body: const SmallVideoPlayer(),
//                         body: const YoutubePlayerDemo(),
//                       );
//                     },
//                   ),
//                 );
//               },
//               child: const Text('Video Gallery'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class WideVideoGalleryButton extends StatelessWidget {
//   const WideVideoGalleryButton({Key? key}) : super(key: key);
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
//                           title: const Text("Videos"),
//                           backgroundColor: Colors.blue,
//                         ),
//                         body: const YoutubePlayerDemo(),
//                       );
//                     },
//                   ),
//                 );
//               },
//               child: const Text('Video Gallery'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NormalVideoGalleryButton extends StatelessWidget {
//   const NormalVideoGalleryButton({Key? key}) : super(key: key);
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
//                           title: const Text("Videos"),
//                           backgroundColor: Colors.blue,
//                         ),
//                         body: const YoutubePlayerDemo(),
//                       );
//                     },
//                   ),
//                 );
//               },
//               child: const Text('Video Gallery'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
