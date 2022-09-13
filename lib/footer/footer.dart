import 'package:flutter/material.dart';
import 'footercards.dart';
import 'footerimages.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideFooter();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalFooter();
        } else {
          return const SmallFooter();
        }
      },
    );
  }
}

class NormalFooter extends StatelessWidget {
  const NormalFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        phoneNumber(),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 475,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 28, 218),
              border: Border.all(
                color: Colors.greenAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Center(
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  NormalRegistrationCard(),
                  NormalLicenseCard(),
                  NormalAddressCard(),
                  NormalInsuranceCard(),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Expanded(
              child: NormalFlutterImage(
                  logo:
                      "https://alphatreeio.xyz/images/webp/flutter_logo2.webp"),
            ),
            Expanded(
              child: NormalFirebaseImage(
                  logo: "https://alphatreeio.xyz/images/webp/firebase2.webp"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Expanded(
              child: NormalCloudFlareImage(
                  logo: "https://alphatreeio.xyz/images/webp/cloud_run.webp"),
            ),
          ],
        ),
      ],
    );
  }
}

class WideFooter extends StatelessWidget {
  const WideFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        phoneNumber(),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 350,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 28, 218),
              border: Border.all(
                color: Colors.greenAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Center(
              child: Wrap(
                children: const <Widget>[
                  WideLicenseCard(),
                  WideAddressCard(),
                  WideInsuranceCard(),
                  WideRegistrationCard(),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            WideFlutterImage(
                logo: "https://alphatreeio.xyz/images/webp/flutter_logo2.webp"),
            WideCloudFlareImage(
                logo: "https://alphatreeio.xyz/images/webp/cloud_run.webp"),
            WideFirebaseImage(
                logo: "https://alphatreeio.xyz/images/webp/firebase2.webp"),
          ],
        ),
      ],
    );
  }
}

class SmallFooter extends StatelessWidget {
  const SmallFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 800,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 28, 218),
              border: Border.all(
                color: Colors.greenAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                phoneNumber(),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0, bottom: 1.0),
                  child: footerText("251 East Snow Cap Dr", 22),
                ),
                footerText("Belfair, WA 98528", 22),
                footerText("United States", 22),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 1.0),
                  child: footerText("License", 22),
                ),
                footerText("WA #604-037-042", 18),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 1.0),
                  child: footerText("Insurance", 22),
                ),
                footerText("#SII4851A201464", 18),
                footerText("Contractors Insurance NW", 18),
                footerText("PO Box 13033", 18),
                footerText("Olympia WA 98508", 18),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 1.0),
                  child: footerText("Bond", 22),
                ),
                footerText("#62922843", 18),
                footerText("Department Of Labor And Industries", 14),
                footerText("Contractor Registration", 14),
                footerText("PO Box 44450", 12),
                footerText("Olympia WA 98504-4450", 12),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Expanded(
              child: SmallFooterImage(
                  logo:
                      "https://alphatreeio.xyz/images/webp/flutter_logo2.webp"),
            ),
            Expanded(
              child: SmallFooterImage(
                  logo: "https://alphatreeio.xyz/images/webp/firebase2.webp"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Expanded(
              child: SmallFooterImage(
                  logo: "https://alphatreeio.xyz/images/webp/cloud_run.webp"),
            ),
          ],
        ),
      ],
    );
  }
}

Text footerText(String message, double size) {
  return Text(
    message,
    style: TextStyle(
      fontSize: size,
      color: Colors.grey,
    ),
  );
}
