import 'package:flutter/material.dart';
class question extends StatefulWidget {

  @override
  State<question> createState() => _questionState();
}

class _questionState extends State<question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(image:AssetImage("assets/question.png"),fit: BoxFit.fill,),
      ),
    );
  }
}
