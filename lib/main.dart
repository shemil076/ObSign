import 'package:flutter/material.dart';

void main() {
    runApp(MaterialApp(
      initialRoute: '/',
      routes:{
        '/': (context) => LandingPageState(),
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
