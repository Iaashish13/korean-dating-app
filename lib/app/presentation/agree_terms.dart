import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';
import 'package:middle_aged_dating/app/core/toast/show_toast.dart';
import 'package:middle_aged_dating/app/core/widgets/custom_checkbox.dart';
import 'package:middle_aged_dating/app/presentation/service_information.dart';

import '../core/constants/app_colors.dart';
import '../core/widgets/cusotm_gerneric_checkbox.dart';

class AgreeTermsScreen extends StatefulWidget {
  static const routeName = '/agree_terms_screen';
  const AgreeTermsScreen({Key? key}) : super(key: key);

  @override
  State<AgreeTermsScreen> createState() => _AgreeTermsScreenState();
}

class _AgreeTermsScreenState extends State<AgreeTermsScreen> {
  bool _selectedTerms = false;
  bool _selectedUserRules = false;
  bool _selectedprivacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppAssets.signUpBar),
            SizedBox(
              height: 80.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.termsColor),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTextConst.termsOfUse,
                        style: AppFonts.termsFont,
                      ),
                      Text(
                        AppTextConst.termsOfUse2,
                        style: AppFonts.termsFont.copyWith(
                            color: Colors.blue, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppTextConst.termsOfUse3,
                        style: AppFonts.termsFont,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      CustomCheck(
                        onchanged: () {
                          setState(() {
                            _selectedTerms = !_selectedTerms;
                          });
                        },
                        selected: _selectedTerms,
                        heightofCheckbox: 22.h,
                        widthofCheckbox: 22.w,
                        checkBoxBorderColor: Colors.black,
                        checkBoxBackgroundColor:
                            AppColors.checkBoxBackgroundColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTextConst.privacyPolicy,
                        style: AppFonts.termsFont,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        AppTextConst.privacyPolicy2,
                        style: AppFonts.termsFont.copyWith(
                            color: Colors.blue, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppTextConst.privacyPolicy3,
                        style: AppFonts.termsFont,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomCheck(
                        onchanged: () {
                          setState(() {
                            _selectedprivacyPolicy = !_selectedprivacyPolicy;
                          });
                        },
                        selected: _selectedprivacyPolicy,
                        heightofCheckbox: 22.h,
                        widthofCheckbox: 22.w,
                        checkBoxBorderColor: Colors.black,
                        checkBoxBackgroundColor:
                            AppColors.checkBoxBackgroundColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTextConst.userRules,
                        style: AppFonts.termsFont,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        AppTextConst.userRules2,
                        style: AppFonts.termsFont.copyWith(
                            color: Colors.blue, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppTextConst.userRules3,
                        style: AppFonts.termsFont,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      CustomCheck(
                        onchanged: () {
                          setState(() {
                            _selectedUserRules = !_selectedUserRules;
                          });
                        },
                        selected: _selectedUserRules,
                        heightofCheckbox: 22.h,
                        widthofCheckbox: 22.w,
                        checkBoxBorderColor: Colors.black,
                        checkBoxBackgroundColor:
                            AppColors.checkBoxBackgroundColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140.h,
            ),
            GestureDetector(
              onTap: () {
                _selectedTerms &&
                        _selectedUserRules &&
                        _selectedprivacyPolicy == true
                    ? Navigator.pushNamed(
                        context, ServiceInformationScreen.routeName)
                    : AppToasts().simpleToast('이용약관에 동의해주세요');
              },
              child: Image.asset(
                AppAssets.nextButton,
                height: 70.h,
                width: 120.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
