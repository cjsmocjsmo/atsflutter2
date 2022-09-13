import 'package:flutter/material.dart';

class GroupImage extends StatelessWidget {
  const GroupImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideGroupImage();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalGroupImage();
        } else {
          return const SmallGroupImage();
        }
      },
    );
  }
}

// class WideGroupImage extends StatelessWidget {
//   const WideGroupImage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 12.0),
//         child: Container(
//           // height: 281.0,
//           // width: 500.0,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.contain,
//               image: AssetImage('https://alphatreeio.xyz/images/webp/curt.webp'),

//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class WideGroupImage extends StatelessWidget {
  const WideGroupImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          fit: BoxFit.contain,
          width: 550.0,
          'https://alphatreeio.xyz/images/webp/curt.webp',
        ),
      ],
    );
  }
}

class NormalGroupImage extends StatelessWidget {
  const NormalGroupImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child:

          // Row(
          //   children: [
          //     Image.network(
          //       fit: BoxFit.contain,
          //       height: 450.0,
          //       'https://alphatreeio.xyz/images/webp/curt.webp',
          //     ),
          //   ],
          // ),

          Container(
        height: 450.0,
        // width: 1600.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('images/curt.webp'),
          ),
        ),
      ),
    );
  }
}

class SmallGroupImage extends StatelessWidget {
  const SmallGroupImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return

        // Row(
        //   children: [
        //     Image.network(
        //       fit: BoxFit.contain,
        //       height: 300.0,
        //       'https://alphatreeio.xyz/images/webp/curt.webp',
        //     ),
        //   ],
        // );

        Container(
      height: 300.0,
      width: 800.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('images/curt.webp'),
        ),
      ),
    );
  }
}
