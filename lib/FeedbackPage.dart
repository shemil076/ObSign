import 'package:flutter/material.dart';


class FeedbackPageState extends StatefulWidget {
  const FeedbackPageState({Key? key}) : super(key: key);

  @override
  State<FeedbackPageState> createState() => FeedbackPage();

}
class FeedbackPage extends State<FeedbackPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.cyan, Colors.blueGrey]
                  )
              )
          ),
        ],
      ),);

  }

}

