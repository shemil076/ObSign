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
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: GlassContainer(
                      height: 550,
                      width: 300,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors:[Colors.white.withOpacity(0.60), Colors.white.withOpacity(0.60)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                      borderGradient: LinearGradient(
                        colors: [Colors.white.withOpacity(0.70), Colors.white.withOpacity(0.20), Colors.lightBlueAccent.withOpacity(0.10), Colors.lightBlueAccent.withOpacity(0.12)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 0.39, 0.40, 1.0],
                      ),
                      blur: 15.0,
                      borderWidth: 1.5,
                      elevation: 3.0,
                      isFrostedGlass: true,
                      shadowColor: Colors.black.withOpacity(0.20),
                      alignment: Alignment.center,
                      frostedOpacity: 0.2,
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(8.0),
                    ),
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