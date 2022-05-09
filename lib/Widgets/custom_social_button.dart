import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget socialButton(String assetName, {onPressed}) {
  return FloatingActionButton(
    elevation: 5,
    heroTag: null,
    backgroundColor: Colors.white,
    onPressed: onPressed,
    //child: SvgPicture.asset(assetName),
  );
}
