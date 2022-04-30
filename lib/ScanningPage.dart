import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'LandingPage.dart';
import 'ShowTheSignPage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';


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

    classifyImage(_image);
  }

  pickGalleryImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });

    classifyImage(_image);
  }

  @override
  void initState() {
    super.initState();
    _loading = true;
    loadModel().then((value) {});
  }

  @override
  void dispose() {
    Tflite.close();
    _loading = false;
  }

  loadModel() async {
    await Tflite.loadModel(
        model: 'assets/model_unquant.tflite', labels: 'assets/labels.txt');
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.5,
        imageMean: 127.5,
        imageStd: 127.5);

    setState(() {
      _loading = false;
      _output = output!;
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

