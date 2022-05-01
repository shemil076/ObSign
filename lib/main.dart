import 'package:flutter/material.dart';
import 'FeedbackPage.dart';
import 'LandingPage.dart';
import 'LoginScreenPage.dart';
import 'ScanningPage.dart';
import 'ShowTheSignPage.dart';
import 'SplashScreenPage.dart';

Future<void> main() async { //perform asynchronous operations
  WidgetsFlutterBinding.ensureInitialized(); //calls the constructor of the binding class it is the class that adapts the dart ui

  runApp(MaterialApp(
    //initializing the routes for the pages in the application
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/second': (context) => const LoginScreen(),
      '/third': (context) => const LandingPageState(),
      '/forth': (context) => const Scanning(),
      '/fifth': (context) => ShowTheSignState(classLabel: name),
      '/sixth': (context) => const FeedbackPageState(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);  // forwards to the constructor of the super class and passes the parameter key passed to MyApp to the super constructors key parameter

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //turns off the debug mode in the application
      home: SplashScreen(),  //open the application's splash screen when the application is launched
    );
  }
}
