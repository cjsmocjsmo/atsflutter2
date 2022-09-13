import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import 'atsflutteryoutube.dart';
import 'photopage/photomasterpage.dart';
import 'misc.dart';
// import 'login_view.dart';
import 'banner.dart';
import 'groupimage.dart';
import 'estimatebutton.dart';
import 'footer/footer.dart';
import 'reviewsdiv.dart';
import 'maindiv.dart';
import 'reviewsbutton.dart';


// const firebaseConfig = {
//   apiKey: "AIzaSyCGf6EiW2vYw-U7nrL6MqnA3yZ723d8fiU",
//   authDomain: "atsflutter2.firebaseapp.com",
//   projectId: "atsflutter2",
//   storageBucket: "atsflutter2.appspot.com",
//   messagingSenderId: "396356922290",
//   appId: "1:396356922290:web:7aacb291f92638866092ab"
// };

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCGf6EiW2vYw-U7nrL6MqnA3yZ723d8fiU",
        appId: "1:396356922290:web:7aacb291f92638866092ab",
        messagingSenderId: "396356922290",
        projectId: "atsflutter2",
        storageBucket: "atsflutter2.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AlphaTree',
      // theme: atsTheme,

      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(title: 'AlphaTree Service'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _currentWidget = const HomePagePage();
  int _currentIndex = 0;
  String _pageTitle = "AlphaTree Service";

  void loadScreen() {
    switch (_currentIndex) {
      case 0:
        return setState(() {
          _pageTitle = "AlphaTree Service";
          _currentWidget = const HomePagePage();
        });
      case 1:
        return setState(() {
          _pageTitle = "Photo Gallery";
          _currentWidget = const PhotoPage();
        });
      // case 2:
      //   return setState(() {
      //     _pageTitle = "Landscape";
      //     _currentWidget = const LandscapePhotosGrid();
      //   });
      // case 2:
      //   return setState(() {
      //     _pageTitle = "Videos";
      //     _currentWidget = const YoutubePlayerDemo();
      //   });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
        // actions: <Widget>[
        //   // _textMeIcon(context),
        //   // const SizedBox(width: 15, height: 10),
        //   // _callMeIcon(context),
        //   // const SizedBox(width: 15, height: 10),
        //   LoginView(),
        //   const SizedBox(width: 15, height: 10),
        //   // const SizedBox(width: 20, height: 10),
        // ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        // selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey[400]),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int tappedIndex) {
          setState(() => {_currentIndex = tappedIndex});
          loadScreen();
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: "Home",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: "Photos",
            tooltip: "Pictures",
            backgroundColor: Colors.red,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.photo_library),
          //   label: "Landscape Photos",
          //   tooltip: "Landscape",
          //   backgroundColor: Colors.purple,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: "Videos",
            tooltip: "Videos",
            backgroundColor: Colors.amber,
          ),
        ],
      ),
      body: _currentWidget,
      floatingActionButton: floatButton(),
    );
  }
}

class HomePagePage extends StatelessWidget {
  const HomePagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return ListView(
            children: <Widget>[
              const BannerImage(),
              const EstimateButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  GroupImage(),
                  Reviews(),
                ],
              ),

              const MainDiv(),
              // // const MissionText(),

              const ReviewsButton(),
              const Footer(),
            ],
          );
          // } else if (constraints.maxWidth <= 1024 &&
          //     constraints.maxWidth > 510) {
          //   return _buildNormalContainer(context);
        } else {
          return ListView(
            children: const <Widget>[
              GroupImage(),
              EstimateButton(),

              // MissionText(),
              MainDiv(),
              BannerImage(),
              Reviews(),
              ReviewsButton(),
              Footer(),
            ],
          );
        }
      },
    );
  }
}

// Widget _textMeIcon(BuildContext context) {
//   return IconButton(
//     icon: const Icon(Icons.chat),
//     tooltip: 'Text Me',
//     onPressed: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute<void>(
//           builder: (BuildContext context) {
//             return Scaffold(
//               backgroundColor: Colors.grey,
//               appBar: AppBar(
//                 title: const Text("Text Messaging"),
//                 backgroundColor: Colors.blue,
//               ),
//               body: LoginView(),
//             );
//           },
//         ),
//       );
//     },
//   );
// }

// Widget _callMeIcon(BuildContext context) {
//   return IconButton(
//     icon: const Icon(Icons.call),
//     tooltip: 'Call Me',
//     onPressed: () {
//       launchUrlString("tel://3605168933");
//     },
//   );
// }
