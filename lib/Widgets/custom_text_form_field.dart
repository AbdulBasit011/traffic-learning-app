import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gymbudd/Constants/extensions.dart';

import '../Constants/colors.dart';
import '../Constants/loginType.dart';

Widget customTextFormField(
  context, {
  Function onPressed,
  // var color = themeClr,
  var labelText,
  var suffix,
  final FormFieldSetter<String> onSaved,
  final Widget prefixIcon,
  final Widget suffixIcon,
  // final String? label,
  final String hintText,
  final bool obscureText = false,
  final FormFieldValidator<String> validator,
  final keyboardType,
  var textInputAction = TextInputAction.next,
  final border,
  final minLines,
  final controller,
  final maxLines,
  final bool enabled = true,
  final style,
  final onChanged,
  // final Color filledClr = lightClr,
  var inputFormatters,
  var prefix,
  var prefixText,
  var maxLength,
  bool showBorder = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: Theme.of(context)
            .textTheme
            .medium
            .copyWith(fontSize: 14.sp, color: Color(0xff111827)),
      ),
      SizedBox(
        height: 8.h,
      ),
      Container(
        // decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey[200]!,
        //     blurRadius: 5,
        //     offset: const Offset(0, 2),
        //   ),
        // ],
        // ),
        child: TextFormField(
          maxLength: maxLength,
          keyboardType: keyboardType,
          onSaved: onSaved,
          onChanged: onChanged,
          style: TextStyle(fontSize: 16.sp),
          decoration: InputDecoration(
            // prefixStyle: Theme.of(context).textTheme.semibold.copyWith(fontSize: 16.sp, color: kIconColor),
            hintStyle: Theme.of(context)
                .textTheme
                .regular
                .copyWith(fontSize: 14.sp, color: kTextFieldHintColor),
            labelStyle: Theme.of(context)
                .textTheme
                .bold
                .copyWith(fontSize: 16.sp, color: Colors.grey),
            errorStyle: TextStyle(color: Colors.red),
            // labelText: labelText,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefix: prefix,
            counterText: "",
            prefixText: prefixText,
            contentPadding:
                EdgeInsets.only(bottom: 5, top: 5, left: 10, right: 10),
            filled: true,
            fillColor: kTextFieldFillColor,
            border: Constants.border,
            enabledBorder: Constants.border,
            disabledBorder: Constants.border,
            focusedBorder: Constants.focusedBorder,
            errorBorder: Constants.errorBorder,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
          ),
          inputFormatters: inputFormatters,
          controller: controller,
          validator: validator,
          autofocus: false,
          obscureText: obscureText,
          textInputAction: textInputAction,
          minLines: minLines,
          cursorColor: kPrimaryColor,
          maxLines: null,
          enabled: enabled,
        ),
      ),
    ],
  );
}
