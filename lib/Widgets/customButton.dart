import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton(String title, {onPressed}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: 50.h,
      width: 147.w,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Colors.redAccent,
            Colors.green,
          ],
        ),
      ),
      child: Center(
        child: Text(title),
      ),
    ),
  );
}
