import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';

class PassWordWidget extends StatefulWidget {
  const PassWordWidget({Key? key}) : super(key: key);

  @override
  _PassWordWidgetState createState() => _PassWordWidgetState();
}

class _PassWordWidgetState extends State<PassWordWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppTextConst.passwordSignUp,
          style: AppFonts.nameAndButton,
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          child: SizedBox(
            height: 50.h,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintMaxLines: 2,
                contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                hintText: AppTextConst.passwordHintText,
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
        SizedBox(
          width: 16.w,
        ),
        SizedBox(
          height: 50.h,
          width: 45.w,
          child: Text(
            AppTextConst.passwordSignUp + AppTextConst.passwordConformText,
            style: AppFonts.passwordConfirm,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          child: SizedBox(
            height: 48.h,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                hintText: AppTextConst.renter,
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
          child: const Text(
            AppTextConst.test,
          ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double?>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.r),
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size?>(Size(40.w, 50.h)),
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
