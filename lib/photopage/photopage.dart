import 'package:flutter/material.dart';
import 'piclist.dart';

// class PicWidget extends StatelessWidget {
//   const PicWidget({Key? key, required this.pic, required this.thumbnail})
//       : super(key: key);
//   final String pic;
//   final String thumbnail;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute<void>(
//             builder: (BuildContext context) {
//               return Scaffold(
//                 appBar: AppBar(
//                   title: const Text("Estimate"),
//                   backgroundColor: Colors.blue,
//                 ),
//                 body: Center(
//                   child: SizedBox(
//                     height: 1067,
//                     width: 600,
//                     child: Image.network(pic),
//                   ),
//                 ),
//               );
//             },
//           ),
//         );
//       },
//       child: Container(
//         margin: const EdgeInsets.only(left: 5.0, right: 5.0),
//         height: 350,
//         alignment: const Alignment(0, 0),
//         decoration: BoxDecoration(
//           color: Colors.greenAccent,
//           border: Border.all(
//             color: Colors.greenAccent, //color of border
//             width: 3, //width of border
//           ),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Image.network(thumbnail),
//       ),
//     );
//   }
// }
// class PhotoPage extends StatelessWidget {
//   const PhotoPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Photos"),
//         backgroundColor: Colors.blue,
//         // bottom: const TabBar(
//         //   tabs: [
//         //     Tab(icon: Icon(Icons.movie_creation_sharp)),
//         //     Tab(icon: Icon(Icons.tv_sharp)),
//         //   ],
//         // ),
//       ),
//       body: Column(
//         children: const <Widget> [
//           PortraitPhotosGrid(),
//           LandscapePhotosGrid(),
//         ]
//       )

//       // Container(
//       //   decoration: BoxDecoration(
//       //     color: Colors.lightGreenAccent.shade400,
//       //   ),
//       //   child: const TabBarView(
//       //     children: [
//       //       // PortraitPhotosGrid(),
//       //       // LandscapePhotosGrid(),

//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

class LandscapePhotosGrid extends StatelessWidget {
  const LandscapePhotosGrid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 16 / 9,
          crossAxisSpacing: 1,
          mainAxisSpacing: 10),
      itemCount: combLandscapeList.length,
      itemBuilder: (BuildContext context, index) {
        
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text("Landscape"),
                      backgroundColor: Colors.blue,
                    ),
                    body: Center(
                      child: SizedBox(
                        height: 1067,
                        width: 600,
                        child: Image.network(combLandscapeList[index]["pic"]),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          child: Image.network(
            combLandscapeList[index]["thumb"],
            fit: BoxFit.contain,
            height: 350,
            width: 621.95,
            
          ),
        );
        // child: Container(
        //   margin: const EdgeInsets.only(left: 5.0, right: 5.0),
        //   height: 350,
        //   alignment: const Alignment(0, 0),
        //   // decoration: BoxDecoration(
        //   //   // color: Colors.greenAccent,
        //   //   border: Border.all(
        //   //     color: Colors.greenAccent, //color of border
        //   //     width: 3, //width of border
        //   //   ),
        //   //   borderRadius: BorderRadius.circular(10),
        //   // ),
        //   child: Image.network(combLandscapeList[index]["thumb"]),
        // ),
      },
    );
  }
}

class PortraitPhotosGrid extends StatelessWidget {
  const PortraitPhotosGrid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 9 / 16,
          crossAxisSpacing: 20,
          mainAxisSpacing: 1),
      itemCount: combPortraitList.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text("Portrait Full Size"),
                      backgroundColor: Colors.blue,
                    ),
                    body: Center(
                      child: SizedBox(
                        height: 1067,
                        width: 600,
                        child: Image.network(combPortraitList[index]["pic"]),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          child: Image.network(
            combPortraitList[index]["thumb"],
            fit: BoxFit.contain,
            height: 621.95,
            width: 350,
            
          ),
        );
      },
    );
  }
}
