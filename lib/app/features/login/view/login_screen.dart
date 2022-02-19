import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_colors.dart';

import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';
import 'package:middle_aged_dating/app/core/widgets/cusotm_button.dart';

import 'package:middle_aged_dating/app/core/widgets/textfield.dart';
import 'package:middle_aged_dating/app/features/register/views/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: const Color(0xff617F9E),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.h),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            AppTextConst.dosling70,
                            style: AppFonts.normalFont,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Image.asset(
                            AppAssets.appIcon,
                            height: 100.h,
                            width: 100.w,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            AppTextConst.singleChat,
                            style: AppFonts.normalFont,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 180.h,
                      ),
                      const CustomTextField(
                        hintText: AppTextConst.userName,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.textFieldSeperatorColor,
                      ),
                      const CustomTextField(
                        hintText: AppTextConst.passWord,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomElevatedB(
                        buttonName: AppTextConst.logIn,
                        primaryColor: AppColors.loginbuttonColor,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomElevatedB(
                        buttonName: AppTextConst.signUp,
                        primaryColor: AppColors.signUpbuttonColor,
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(SignUpScreen.routeName);
                        },
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomElevatedB(
                        onPressed: () {},
                        buttonName: AppTextConst.findIdPassword,
                        primaryColor: AppColors.findIdPassButtonColor,
                      ),
                      SizedBox(
                        height: 44.h,
                      ),
                      CustomButtons().roundedElevatedButton(
                          AppTextConst.freeForWomen,
                          () {},
                          AppColors.freeForWomenButtonColor,
                          Colors.red,
                          AppFonts.freeForWomen),
                      CustomButtons()
                          .textButton(AppTextConst.mensPartialPay, () {}),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                  color: AppColors.lastContainerColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            AppTextConst.nameCeo,
                            style: AppFonts.lastContainerFont,
                          ),
                          Text(
                            AppTextConst.personalIncharge,
                            style: AppFonts.lastContainerFont,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        AppTextConst.webApp,
                        style: AppFonts.lastContainerFont,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
