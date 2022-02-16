import 'package:flutter/material.dart';

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
      home: LandingPageState(),
    );
  }
}
