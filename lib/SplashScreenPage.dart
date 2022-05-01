import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

import 'LoginScreenPage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();  //multiple State objects are associated with the same StatefulWidget because the widget has been inserted into the tree in multiple places.
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime(); //calls the startTime method to set the timer for the splash screen to appear
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    //gives the route to next page when the timer is over for the splash screen
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const LoginScreen()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }
  //builds the structure of the splash screen page
  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.cyan, Colors.blueGrey],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: SizedBox(
              child: Image.asset('assets/logo/logo_transparent.png'), //adds the image logo to the application
              height: 125,
              width: 125,
            ),
          )
        ],
      ),
    );
  }
}