import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum LoginType {
  phone,
  email,
  google,
  facebook,
  apple,
}

class Constants {
  //login types
  static String phone = 'phone';
  static String google = 'google';
  static String facebook = 'facebook';
  static String apple = 'apple';
  static String defaultAvatar =
      'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_640.png';

  static String googleApiKey = 'AIzaSyCV5xc1gwHXevjX1MX1aZztBo-lKUmshfk';

  static List<Map<String, dynamic>> passwordInstructions = [
    {
      'label': 'pwd_instruction_1'.tr,
      'flag': false,
    },
    {
      'label': 'pwd_instruction_2'.tr,
      'flag': true,
    },
    {
      'label': 'pwd_instruction_3'.tr,
      'flag': true,
    },
    {
      'label': 'pwd_instruction_4'.tr,
      'flag': true,
    },
  ];

  static List<Map<String, dynamic>> languageList = [
    {
      'title': 'English',
      //'flag': Assets.english,
    },
    {
      'title': 'Denmark',
      //'flag': Assets.denmark,
    },
  ];

  static List<Map<String, dynamic>> introDetails = [
    {
      'title': 'Welcome to Traffic Learner',
      'desc':
          'Discover the best guidelines',
    },
    {
      'title': 'Welcome to Traffic Guide',
      'desc':
          'Discover the best Routes',
    },
    {
      'title': 'Welcome to Traffic Guide',
      'desc': 'Discover the best Routes',
    },
  ];

  static var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
        //color: kTextFieldFillColor,
        ),
  );

  static var focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
        // color: kPrimaryColor,
        ),
  );

  static var errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
}
