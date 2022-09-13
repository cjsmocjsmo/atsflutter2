import 'package:flutter/material.dart';

class MissionText extends StatelessWidget {
  const MissionText({Key? key}) : super(key: key);
  final missionText =
      "At Alpha Tree Service, we specialize in removing trees from "
      "some of the tightest areas around homes in Washington. We have "
      "the tools to get your job done safely, with more than 15 year "
      "of experience in the tree industry. The weather can be unpredictable "
      "so we are here to help whether the tree has fallen on your home "
      "or in your yard. We will leave your property as we found it or "
      "better! We look forward to helping you with all your tree care needs.";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1024) {
        return Container(
          height: 200,
          width: 900,
          margin: const EdgeInsets.only(top: 15.0),
          alignment: const Alignment(0, 0),
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 7.0, right: 7.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(900, 200)),
              child: Text(
                missionText,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
        return Container(
          height: 200,
          margin: const EdgeInsets.only(top: 15.0),
          alignment: const Alignment(0, 0),
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 7.0, right: 7.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(800, 200)),
              child: Text(
                missionText,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      } else {
        return Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 17.0),
            child: Container(
          // height: 330,
          // width: 400,
          alignment: const Alignment(0, 0),
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 17.0, right: 17.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(350, 350)),
              child: Text(
                missionText,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
                //     ),
              ),
            ),
          ),
            ),
        );
      }
    });
  }
}

// Container normalMissionText() {
//   return Container(
//     height: 220,
//     alignment: const Alignment(0, 0),
//     color: Colors.black,
//     child: Padding(
//       padding: const EdgeInsets.only(left: 7.0, right: 7.0),
//       child: ConstrainedBox(
//         constraints: BoxConstraints.tight(const Size(800, 220)),
//         child: Text(
//           missionText,
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//   );
// }

class SmallMissionText extends StatelessWidget {
  const SmallMissionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// Container smallMissionText() {
    return Container(
      height: 230,
      alignment: const Alignment(0, 0),
      color: Colors.black,
      child: const Padding(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        child: Text(
          "At Alpha Tree Service, we specialize in removing trees from "
          "some of the tightest areas around homes in Washington. We have "
          "the tools to get your job done safely, with more than 15 year "
          "of experience in the tree industry. The weather can be unpredictable "
          "so we are here to help whether the tree has fallen on your home "
          "or in your yard. We will leave your property as we found it or "
          "better! We look forward to helping you with all your tree care needs.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
