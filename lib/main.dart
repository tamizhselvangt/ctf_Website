// import 'package:ctf/pages/challenges_Page.dart';
import 'package:flutter/material.dart';
import 'pages/welcomePage.dart';
import 'dart:html';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Listen for the beforeunload and unload events.
    window.addEventListener('beforeunload', (event) async {
        // Dispose of the EngineFlutterView.
        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
     });
    window.addEventListener('unload', (event) async {
        // Dispose of the EngineFlutterView.
        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CTF-8',
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Color(0xff151515),
      //   ),
      //   iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom(
      //     foregroundColor: Colors.white
      //   )),
      //   primaryColor: Color(0xffbfe76a),
      //   primaryTextTheme: const TextTheme(
      // displayMedium: TextStyle(
      //   fontFamily: "Monaco",
      //   fontSize: 40,
      //   fontWeight: FontWeight.w400,
      //   color: Color(0xffbfe76a),
      // ),
      //   )
      // ),
      // home: ChallengePage(),
      home: WelcomePage(),
    );
  }
}

