import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';

class SignUpField extends StatefulWidget {
  final String fieldName;
  final String hintText;
  final String buttonName;
  const SignUpField({
    Key? key,
    required this.fieldName,
    required this.hintText,
    required this.buttonName,
  }) : super(key: key);

  @override
  _SignUpFieldState createState() => _SignUpFieldState();
}

class _SignUpFieldState extends State<SignUpField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          widget.fieldName,
          style: AppFonts.nameAndButton,
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          child: SizedBox(
            height: 45.h,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
                hintText: widget.hintText,
                hintStyle: AppFonts.signUphintStyle,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(widget.buttonName),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double?>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.r),
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size?>(Size(100.w, 46.h)),
            backgroundColor: MaterialStateProperty.all<Color?>(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
            textStyle:
                MaterialStateProperty.all<TextStyle?>(AppFonts.nameAndButton),
          ),
        ),
      ],
    );
  }
}
