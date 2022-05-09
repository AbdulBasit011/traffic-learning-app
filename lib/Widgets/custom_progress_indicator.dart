import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../Constants/colors.dart';

void showLoader({msg}) {
  EasyLoading.show(
      status: msg ?? 'loading...',
      dismissOnTap: true,
      indicator: customProgressIndicator());
}

void hideLoader() {
  EasyLoading.dismiss();
}

Widget customProgressIndicator() {
  return const CircularProgressIndicator.adaptive(
    valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
  );
}
