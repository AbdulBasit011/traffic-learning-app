import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gymbudd/Constants/extensions.dart';

class CustomDialog extends StatelessWidget {
  final icon;
  final String title;
  final String desc;
  final Widget button;

  CustomDialog({
    this.icon,
    this.title,
    this.desc,
    this.button,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: size.height / 3,
        child: contentBox(context),
      ),
    );
  }

  Widget contentBox(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              SizedBox(height: 20.h),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .semibold
                    .copyWith(fontSize: 16.sp),
              ),
              if (desc != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .regular
                        .copyWith(fontSize: 14.sp),
                  ),
                ),
              if (button != null)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: button,
                )
            ],
          ),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  )))
        ],
      ),
    );
  }
}
