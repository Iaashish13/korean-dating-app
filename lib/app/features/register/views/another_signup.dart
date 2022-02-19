import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_colors.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';
import 'package:middle_aged_dating/app/features/register/widgets/dropdown_widget.dart';

class AnotherSignUpScreen extends StatefulWidget {
  static const routeName = '/another_signUpScreen';
  const AnotherSignUpScreen({Key? key}) : super(key: key);

  @override
  _AnotherSignUpScreenState createState() => _AnotherSignUpScreenState();
}

class _AnotherSignUpScreenState extends State<AnotherSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset(AppAssets.signUpBar),
            Text(
              AppTextConst.myProfileStyle,
              style: AppFonts.basicInfo,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.signUpContaainerColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          AppTextConst.hopeArea,
                          style: AppFonts.nameAndButton,
                        ),
                        // CustomDropDownGender.
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
