import 'package:flutter/material.dart';

class SmallFooterImage extends StatelessWidget {
  const SmallFooterImage({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.network(
        fit: BoxFit.contain,
        height: 30.0,
        width: 123.0,
        logo,
      ),

      // Container(
      //   height: 30.0,
      //   width: 123.0,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.contain,
      //       image: AssetImage(logo),
      //     ),
      //   ),
      // ),
    );
  }
}

class WideCloudFlareImage extends StatelessWidget {
  const WideCloudFlareImage({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.network(
        fit: BoxFit.contain,
        height: 200.0,
        width: 300.0,
        logo,
      ),

      // Container(
      //   height: 200.0,
      //   width: 300.0,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.contain,
      //       image: AssetImage(logo),
      //     ),
      //   ),
      // ),
    );
  }
}

class NormalCloudFlareImage extends StatelessWidget {
  const NormalCloudFlareImage({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.network(
        fit: BoxFit.contain,
        height: 75.0,
        width: 307.0,
        logo,
      ),

      // Container(
      //   height: 75.0,
      //   width: 307.0,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.contain,
      //       image: AssetImage(logo),
      //     ),
      //   ),
      // ),
    );
  }
}

class WideFirebaseImage extends StatelessWidget {
  const WideFirebaseImage({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.network(
        fit: BoxFit.contain,
        height: 150.0,
        width: 265.0,
        logo,
      ),

      // Container(
      //   height: 150.0,
      //   width: 265.0,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.contain,
      //       image: AssetImage(logo),
      //     ),
      //   ),
      // ),
    );
  }
}

class NormalFirebaseImage extends StatelessWidget {
  const NormalFirebaseImage({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.network(
        fit: BoxFit.contain,
        height: 75.0,
        width: 307.0,
        logo,
      ),

      // Container(
      //   height: 75.0,
      //   width: 307.0,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.contain,
      //       image: AssetImage(logo),
      //     ),
      //   ),
      // ),
    );
  }
}

class WideFlutterImage extends StatelessWidget {
  const WideFlutterImage({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.network(
        fit: BoxFit.contain,
        height: 120.0,
        width: 235.0,
        logo,
      ),

      // Container(
      //   height: 120.0,
      //   width: 235.0,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.contain,
      //       image: AssetImage(logo),
      //     ),
      //   ),
      // ),
    );
  }
}

class NormalFlutterImage extends StatelessWidget {
  const NormalFlutterImage({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.network(
        fit: BoxFit.contain,
        height: 75.0,
        width: 307.0,
        logo,
      ),

      // Container(
      //   height: 75.0,
      //   width: 307.0,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.contain,
      //       image: AssetImage(logo),
      //     ),
      //   ),
      // ),
    );
  }
}
