import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Constants/assets.dart';
import '../Constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget> actions;
  final bool showBackButton;
  final Color backgroundColor;
  final automaticallyImplyLeading;
  final bool centerTitle;

  CustomAppBar({
    this.title,
    this.actions,
    this.showBackButton = false,
    this.backgroundColor = kBackgroundColor,
    this.automaticallyImplyLeading = true,
    this.centerTitle = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      titleSpacing: 0,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      // leading: showBackButton ? _backButton(context) : null,
      title: title,
      iconTheme: const IconThemeData(color: kDrawerIconColor),
      actions: actions,
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: backgroundColor,

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    );
  }

// Widget _backButton(context) {
//   return Padding(
//     padding: const EdgeInsets.all(10.0),
//     child: RawMaterialButton(
//       onPressed: () {
//         Navigator.pop(context);
//       },
//       elevation: 5.0,
//       fillColor: kPrimaryColor,
//       child: Center(
//         child: Icon(
//           Icons.arrow_back_rounded,
//           color: Colors.white,
//         ),
//       ),
//       shape: CircleBorder(),
//     ),
//   );
// }
}

Widget logoWidget({double width = 150, double height}) {
  return Image.asset(
    Assets.logo,
    height: height,
    width: width,
  );
}
