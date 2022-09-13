import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return wideBannerImage();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return normalBannerImage();
        } else {
          return const SmallBannerImage();
        }
      },
    );
  }
}

class SmallBannerImage extends StatelessWidget {
  const SmallBannerImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      fit: BoxFit.contain,
      height: 170.0,
      width: 800.0,
      'https://alphatreeio.xyz/images/webp/banner.webp',
    );

    // Container(
    //   height: 170.0,
    //   width: 800.0,
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //       fit: BoxFit.contain,
    //       image: AssetImage('images/webp/banner.webp'),
    //     ),
    //   ),
    // );
  }
}

Image normalBannerImage() {
  return Image.network(
    fit: BoxFit.contain,
    height: 300.0,
    width: 1000.0,
    'https://alphatreeio.xyz/images/webp/banner.webp',
  );

  // Container(
  //   height: 300.0,
  //   width: 1000.0,
  //   decoration: const BoxDecoration(
  //     image: DecorationImage(
  //       fit: BoxFit.contain,
  //       image: AssetImage('images/webp/banner.webp'),
  //     ),
  //   ),
  // );
}

Center wideBannerImage() {
  return Center(
    child: Image.network(
      fit: BoxFit.contain,
      height: 400.0,
      width: 1000.0,
      'https://alphatreeio.xyz/images/webp/banner.webp',
    ),

    // Container(
    //   height: 400.0,
    //   width: 1000.0,
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //       fit: BoxFit.contain,
    //       image: AssetImage('images/webp/banner.webp'),
    //     ),
    //   ),
    // ),
  );
}
