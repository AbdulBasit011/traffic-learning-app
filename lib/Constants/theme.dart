import 'package:flutter/material.dart';

import 'colors.dart';

class Styles {
  static ThemeData themeData(BuildContext context, {bool isDarkTheme}) {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: kPrimaryColor,
      // scaffoldBackgroundColor: kBackgroundColor,
      // textTheme: TextTheme(
      //   caption: TextStyle(color: kPrimaryColor),
      //   overline: TextStyle(color: kPrimaryColor),
      //   subtitle1: TextStyle(color: kPrimaryColor),
      //   subtitle2: TextStyle(color: kPrimaryColor),
      //   bodyText1: TextStyle(color: kPrimaryColor),
      //   bodyText2: TextStyle(color: kPrimaryColor),
      //   button: TextStyle(color: kPrimaryColor),
      // ),
      fontFamily: "Poppins",
      buttonTheme: ButtonThemeData(
        buttonColor: kButtonColor,
      ),

      primaryIconTheme: IconThemeData(color: kIconColor), // hamburger menu
      iconTheme: IconThemeData(color: kIconColor),
//       textTheme: TextTheme(
//         bodyText1: TextStyle(fontSize: 18.sp, color: themeClr, fontWeight: FontWeight.w600),
//         bodyText2: TextStyle(fontSize: 14.sp, color: Colors.black),
//         button: TextStyle(fontSize: 16.sp, color: Colors.white),
// // caption: TextStyle(fontSize: 26.sp, color: Colors.black, fontWeight: FontWeight.w500),
//         headline1: TextStyle(fontSize: 26.sp, color: Colors.black, fontWeight: FontWeight.w500),
// // overline:
// // subtitle1:
//       ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        primary: kPrimaryColor,
      )),
      // toggleableActiveColor : themeClr,
      // buttonTheme: ButtonThemeData(
      //     buttonColor: themeClr,
      //     // textTheme: ButtonTextTheme.primary,

      //     colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.white) // Text color
      //     ),

      // primarySwatch: themeClr,
      accentColor: kAppbarColor,
      // colorScheme: Theme.of(context).colorScheme.copyWith(primary: themeClr, primaryVariant:themeClr ),

      // primaryColor: isDarkTheme ? Colors.black : Colors.white,
      toggleableActiveColor: kPrimaryColor,

      // backgroundColor: isDarkTheme ? Colors.black : Color(0xffF1F5FB),

      // indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      // buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xffF1F5FB),

      // hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),
      // splashColor: kPrimaryColor.withOpacity(.2),
      // highlightColor:kPrimaryColor.withOpacity(.2),
      // hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),

      // focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      // disabledColor: Colors.grey,
      // textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      // cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
      // canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      // brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // buttonTheme: Theme.of(context).buttonTheme.copyWith(
      //     colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          iconTheme: IconThemeData(color: kIconColor),
          titleTextStyle: TextStyle(color: kIconColor)),
    );
  }
}
