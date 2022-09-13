import 'package:flutter/material.dart';

Text fText(String message, double size) {
  return Text(
    message,
    style: TextStyle(
      fontSize: size,
      color: Colors.white,
    ),
  );
}

Padding phoneNumber() {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
    child: fText("360 516 8933", 40),
  );
}

class WideAddressCard extends StatelessWidget {
  const WideAddressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("Address", 20),
            fText("251 East Snow Cap Dr", 14),
            fText("Belfair, WA 98528", 14),
            fText("United States", 14),
          ],
        ),
      ),
    );
  }
}

class WideLicenseCard extends StatelessWidget {
  const WideLicenseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(61.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("License", 20),
            fText("WA #604-037-042", 14),
          ],
        ),
      ),
    );
  }
}

class WideInsuranceCard extends StatelessWidget {
  const WideInsuranceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(37.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("Insurance", 20),
            fText("#SII4851A201464", 14),
            fText("Contractors Insurance NW", 14),
            fText("PO Box 13033", 14),
            fText("Olympia WA 98508", 14),
          ],
        ),
      ),
    );
  }
}

class WideRegistrationCard extends StatelessWidget {
  const WideRegistrationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(29.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("Bond", 20),
            fText("#62922843", 14),
            fText("Department Of Labor And Industries", 14),
            fText("Contractor Registration", 14),
            fText("PO Box 44450", 14),
            fText("Olympia WA 98504-4450", 14),
          ],
        ),
      ),
    );
  }
}

class NormalAddressCard extends StatelessWidget {
  const NormalAddressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("Address", 20),
            fText("251 East Snow Cap Dr", 14),
            fText("Belfair, WA 98528", 14),
            fText("United States", 14),
          ],
        ),
      ),
    );
  }
}

class NormalLicenseCard extends StatelessWidget {
  const NormalLicenseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(61.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("License", 20),
            fText("WA #604-037-042", 14),
          ],
        ),
      ),
    );
  }
}

class NormalInsuranceCard extends StatelessWidget {
  const NormalInsuranceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(37.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("Insurance", 20),
            fText("#SII4851A201464", 14),
            fText("Contractors Insurance NW", 14),
            fText("PO Box 13033", 14),
            fText("Olympia WA 98508", 14),
          ],
        ),
      ),
    );
  }
}

class NormalRegistrationCard extends StatelessWidget {
  const NormalRegistrationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(29.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            fText("Bond", 20),
            fText("#62922843", 14),
            fText("Department Of Labor And Industries", 14),
            fText("Contractor Registration", 14),
            fText("PO Box 44450", 14),
            fText("Olympia WA 98504-4450", 14),
          ],
        ),
      ),
    );
  }
}
