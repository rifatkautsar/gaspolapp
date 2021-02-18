// import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';
// import 'login_page.dart';

// void main() {
//   runApp(new MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: new SplashScreen(),
//   ));
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => new _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     new Future.delayed(
//         const Duration(seconds: 10),
//         () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => LoginPagee()),
//             ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/background.png"),
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 50.0,
//             child: new Image.asset("assets/splash.png", fit: BoxFit.fill, height: 350.0,),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPagee()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 50.0,
            child: new Image.asset(
              "assets/splash.png",
              fit: BoxFit.fill,
              height: 350.0,
            ),
          ),
        ],
      ),
    );
  }
}
