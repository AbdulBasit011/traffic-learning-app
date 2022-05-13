import 'package:flutter/material.dart';
class safetyImage extends StatefulWidget {

  @override
  State<safetyImage> createState() => _safetyImageState();
}

class _safetyImageState extends State<safetyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(image:AssetImage("assets/safety.jpg"),fit: BoxFit.fill,),
      ),
    );
  }
}
