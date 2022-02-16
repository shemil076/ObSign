import 'package:flutter/material.dart';

import 'FeedbackPage.dart';
import 'LandingPage.dart';
import 'LoginScreenPage.dart';
import 'ScanTheObjectPage.dart';
import 'ShowTheSignPage.dart';
import 'SignUpScreenPage.dart';
import 'SplashScreenPage.dart';

void main() {
    runApp(MaterialApp(
      initialRoute: '/',
      routes:{
        '/': (context) => SplashScreen(),
        '/second': (context) => LoginScreen(),
        '/third' : (context) => SignUpScreen(),
        '/forth' : (context) => LandingPageState(),
        '/fifth' : (context) => ScanTheObjectState(),
        '/sixth' : (context) => ShowTheSignState(),
        '/seventh': (context) => FeedbackPageState(),
      },
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
