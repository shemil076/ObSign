import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class ShowTheSignState extends StatefulWidget{
  const ShowTheSignState({Key? key}) : super(key: key);

  @override
  State<ShowTheSignState> createState() => ShowSignPage();
}

class ShowSignPage extends State<ShowTheSignState> {
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image(
                    image: AssetImage('assets/logo/logo_transparent.png'),
                  ),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }

}