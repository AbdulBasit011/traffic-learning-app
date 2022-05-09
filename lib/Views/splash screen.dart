import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymbudd/Views/sign_up_sign_in.dart';

import 'loginView.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () => Get.to(SignInSignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(
            'https://w7.pngwing.com/pngs/674/30/png-transparent-cartoon-traffic-lights-traffic-light-light-hand-thumbnail.png',fit: BoxFit.fitHeight,),
      ),
    );
  }
}
