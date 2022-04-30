import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'LandingPage.dart';
import 'ShowTheSignPage.dart';
import 'package:image_picker/image_picker.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _ScanningPage createState() => _ScanningPage();
}

class _ScanningPage extends State<Home> {
  final picker = ImagePicker();
  late File _image;
  bool _loading = false;
  late List _output;
  pickImage() async {
    var image = await picker.getImage(source: ImageSource.camera);

    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children:[Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.cyan, Colors.blueGrey])),
            ),
        ])
    );
  }


}

