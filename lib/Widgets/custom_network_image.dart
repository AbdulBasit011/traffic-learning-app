import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double width;
  final double height;
  final color;

  CustomNetworkImage(
    this.imageUrl, {
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(); /*CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) =>
          Center(child: CupertinoActivityIndicator()),
      errorWidget: (context, url, error) => new Icon(Icons.error),
      fit: fit,
      height: height,
      width: width,
      color: color,
      // colorBlendMode: colorBlendMode,
    );*/
  }
}
