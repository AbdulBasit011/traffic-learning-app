import 'package:flutter/material.dart';
class signImage extends StatefulWidget {

  @override
  State<signImage> createState() => _signImageState();
}

class _signImageState extends State<signImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(image:AssetImage("assets/sign.png"),fit: BoxFit.fill,),
      ),
    );
  }
}
