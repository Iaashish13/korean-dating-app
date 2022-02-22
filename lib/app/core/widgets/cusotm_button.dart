import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';

class CustomButtons {
  Widget roundedElevatedButton(String text, VoidCallback? onPresed,
      Color? backgroundColor, Color? foregroundColor, TextStyle? textStyle,
      {double? borderRadius, EdgeInsetsGeometry? padding}) {
    return ElevatedButton(
      onPressed: onPresed,
      child: Text(text),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double?>(0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(padding),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color?>(backgroundColor),
        foregroundColor: MaterialStateProperty.all<Color?>(foregroundColor),
        textStyle: MaterialStateProperty.all<TextStyle?>(textStyle),
      ),
    );
  }

  Widget textButton(String text, VoidCallback? onPressed) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 36.sp,
              color: Colors.white,
              fontWeight: FontWeight.w200),
        ));
  }
}

class CustomElevatedB extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;
  final Color? primaryColor;
  final Color? onPrimary;
  final TextStyle? textStyle;

  const CustomElevatedB({
    Key? key,
    required this.onPressed,
    required this.buttonName,
    this.primaryColor,
    this.onPrimary,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonName),
      style: ElevatedButton.styleFrom(
          primary: primaryColor,
          onPrimary: onPrimary ?? Colors.white,
          textStyle: AppFonts.buttonFont),
    );
  }
}
