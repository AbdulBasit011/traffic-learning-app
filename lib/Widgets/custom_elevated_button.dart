import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final onPressed;
  final Widget child;
  final borderRadius;
  final color;
  final size;

  CustomElevatedButton({
    this.onPressed,
    this.child,
    this.borderRadius,
    this.color = kButtonColor,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          color ?? kPrimaryColor,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10.0),
            // side: BorderSide(color: Colors.red),
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          size ?? Size(50.w, 50.h),
        ),
      ),

      // style: ElevatedButton.styleFrom(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: borderRadius ?? BorderRadius.circular(10.0),
      //   ),

      //   primary: color ?? kPrimaryColor,
      // minimumSize: Size(50.w, 50.h),
      // ),
    );
  }
}
