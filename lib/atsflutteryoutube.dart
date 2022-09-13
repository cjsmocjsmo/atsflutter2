// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import '/Model/youtube_model.dart';

// class YoutubePlayerDemo extends StatefulWidget {
//   const YoutubePlayerDemo({Key? key}) : super(key: key);
//   // final String title;

//   @override
//   YoutubePlayerDemoState createState() => YoutubePlayerDemoState();
// }

// class YoutubePlayerDemoState extends State<YoutubePlayerDemo> {
//   late YoutubePlayerController _ytbPlayerController;
//   List<YoutubeModel> videosList = [
//     const YoutubeModel(
//         id: 1,
//         youtubeId: 'M4ZGLJk7Cjw',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/DyingWhitePineRemoval.webp"), //dying white pine
//     const YoutubeModel(
//         id: 2,
//         youtubeId: '5XRaC8RSXbM',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/DouglasFirRemoval.webp"), //douglas fir removal
//     const YoutubeModel(
//         id: 3,
//         youtubeId: 'IZQymhYK59k',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/SnowBoundHemlock.webp"), //snow bound hemlock
//     const YoutubeModel(
//         id: 4,
//         youtubeId: 'PHDLlOBqkjw',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/MakeItSnow.webp"), //make it snow
//     const YoutubeModel(
//         id: 5,
//         youtubeId: 'mfWPIOh30nI',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/we_cut_trees.webp"), //we cut trees
//     const YoutubeModel(
//         id: 6,
//         youtubeId: 'CVi0d1aepbE',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/CedarTreeRemoval.webp"), //cedar tree removal
//     const YoutubeModel(
//         id: 7,
//         youtubeId: 'MAhLq6x6jOM',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/tight_spaces.webp"), //tight spaces
//     const YoutubeModel(
//         id: 8,
//         youtubeId: '9rvT2BEYbf8',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/WindDamagedCedar.webp"), //wind damaged cedar
//     const YoutubeModel(
//         id: 9,
//         youtubeId: 'wI5ZR78-aKM',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/JustGettingStarted.webp"), //just getting started
//     const YoutubeModel(
//         id: 10,
//         youtubeId: 'okVkEfmoTTA',
//         thumbnail:
//             "https://alphatreeio.xyz/images/webp/BigTreeTopRemoval.webp"), //big tree top removal
//   ];
//   // https://youtu.be/M4ZGLJk7Cjw
//   // https://youtu.be/5XRaC8RSXbM
//   // https://youtu.be/IZQymhYK59k
//   // https://youtu.be/PHDLlOBqkjw
//   // https://youtu.be/mfWPIOh30nI
//   // https://youtu.be/CVi0d1aepbE
//   // https://youtu.be/MAhLq6x6jOM
//   // https://youtu.be/9rvT2BEYbf8
//   // https://youtu.be/wI5ZR78-aKM
//   // https://youtu.be/okVkEfmoTTA

//   @override
//   void initState() {
//     super.initState();

//     _setOrientation([
//       DeviceOrientation.landscapeRight,
//       DeviceOrientation.landscapeLeft,
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setState(() {
//         _ytbPlayerController = YoutubePlayerController(
//           initialVideoId: videosList[0].youtubeId,
//           params: const YoutubePlayerParams(
//             showFullscreenButton: true,
//           ),
//         );
//       });
//     });
//   }

//   @override
//   void dispose() {
//     super.dispose();

//     _setOrientation([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);

//     _ytbPlayerController.close();
//   }

//   _setOrientation(List<DeviceOrientation> orientations) {
//     SystemChrome.setPreferredOrientations(orientations);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text("YouTubePlayer"),
//       // ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             _buildYtbView(),
//             _buildMoreVideoTitle(),
//             _buildMoreVideosView(),
//           ],
//         ),
//       ),
//     );
//   }

//   _buildYtbView() {
//     return AspectRatio(
//       aspectRatio: 16 / 9,
//       child: _ytbPlayerController != null
//           ? YoutubePlayerIFrame(controller: _ytbPlayerController)
//           : const Center(child: CircularProgressIndicator()),
//     );
//   }

//   _buildMoreVideoTitle() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: const <Widget>[
//           Text(
//             "More videos",
//             style: TextStyle(fontSize: 16, color: Colors.black),
//           ),
//         ],
//       ),
//     );
//   }

//   _buildMoreVideosView() {
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         child: ListView.builder(
//             itemCount: videosList.length,
//             physics: const AlwaysScrollableScrollPhysics(),
//             itemBuilder: (context, index) {
//               // print(videosList[index]);
//               return GestureDetector(
//                 onTap: () {
//                   final newCode = videosList[index].youtubeId;
//                   _ytbPlayerController.load(newCode);
//                   _ytbPlayerController.stop();
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height / 5,
//                   margin: const EdgeInsets.symmetric(vertical: 7),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(18),
//                     child: Stack(
//                       fit: StackFit.expand,
//                       children: <Widget>[
//                         Positioned(
//                             child: Image.network(videosList[index].thumbnail)
//                             // Image.asset("https://alphatreeio.xyz/douglas_fir_removal.webp"),
//                             // CachedNetworkImage(
//                             //   imageUrl:
//                             //       "https://img.youtube.com/vi/${videosList[index].youtubeId}/default.webp",
//                             //   fit: BoxFit.cover,
//                             // ),
//                             ),
//                         Positioned(
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Image.network(
//                               'https://alphatreeio.xyz/images/webp/button-logo200.png',
//                               height: 30,
//                               width: 30,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
