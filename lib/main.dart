import 'package:flutter/material.dart';
import 'FeedbackPage.dart';
import 'LandingPage.dart';
import 'LoginScreenPage.dart';
import 'ScanningPage.dart';
import 'ShowTheSignPage.dart';
import 'SplashScreenPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
