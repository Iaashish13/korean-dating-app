import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_colors.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';
import 'package:middle_aged_dating/app/core/widgets/checkbox.dart';
import 'package:middle_aged_dating/app/core/widgets/cusotm_button.dart';
import 'package:middle_aged_dating/app/features/register/widgets/birth_widget.dart';
import 'package:middle_aged_dating/app/features/register/widgets/password_widget.dart';
import 'package:middle_aged_dating/app/features/register/widgets/signup_filed.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign_up_screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final gender = [AppTextConst.male, AppTextConst.female];

  String? choosedValue;

  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Image.asset(AppAssets.signUpBar),
              Text(
                AppTextConst.basicInformation,
                style: AppFonts.basicInfo,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.signUpContaainerColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SignUpField(
                        fieldName: AppTextConst.iD,
                        hintText: AppTextConst.idHintText,
                        buttonName: AppTextConst.doubleCheck,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const SignUpField(
                        fieldName: AppTextConst.nickName,
                        hintText: AppTextConst.nickNameHintText,
                        buttonName: AppTextConst.doubleCheck,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const PassWordWidget(),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                AppTextConst.gender,
                                style: AppFonts.nameAndButton,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Container(
                                height: 45.h,
                                padding: EdgeInsets.only(
                                    left: 10.w, top: 3.h, bottom: 4.h),
                                color: Colors.white,
                                child: DropdownButton<String>(
                                  value: choosedValue,
                                  focusColor: Colors.white,
                                  underline: Container(
                                    color: Colors.white,
                                  ),
                                  iconSize: 60,
                                  icon: Container(
                                    alignment: Alignment.topCenter,
                                    padding: EdgeInsets.only(bottom: 16.h),
                                    child: const Icon(Icons.arrow_drop_down),
                                  ),
                                  iconEnabledColor: Colors.black,
                                  iconDisabledColor: Colors.black,
                                  items: gender
                                      .map((valueItem) => DropdownMenuItem(
                                            child: Text(valueItem),
                                            value: valueItem,
                                          ))
                                      .toList(),
                                  onChanged: (newValue) => setState(
                                    () => choosedValue = newValue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const CustomCheckBox(),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                AppTextConst.divorcedSingle,
                                style: AppFonts.divorceSingle,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              const CustomCheckBox(),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                AppTextConst.single,
                                style: AppFonts.divorceSingle,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const BirthWidget(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          CustomButtons().roundedElevatedButton(
                              AppTextConst.adultIdentifyVerify,
                              () {},
                              AppColors.adultVerificationButtonColor,
                              Colors.black,
                              AppFonts.adultVerification),
                          SizedBox(
                            width: 40.w,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(AppTextConst.certificationButton),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double?>(0),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.r),
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all<Size?>(
                                  Size(100.w, 40.h)),
                              backgroundColor:
                                  MaterialStateProperty.all<Color?>(
                                      Colors.blue),
                              foregroundColor:
                                  MaterialStateProperty.all<Color?>(
                                      Colors.white),
                              textStyle: MaterialStateProperty.all<TextStyle?>(
                                  AppFonts.nameAndButton),
                            ),
                          )
                          // GestureDetector(
                          //   onTap: () {},
                          //   child: Image.asset(
                          //     'assets/before-certification.png',
                          //     height: 40.h,
                          //     width: 100.w,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      const SignUpField(
                        fieldName: AppTextConst.phoneNumber,
                        hintText: AppTextConst.phoneNumberHintText,
                        buttonName: AppTextConst.phoneNumberVerify,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      const SignUpField(
                          fieldName: AppTextConst.number,
                          hintText: AppTextConst.numberConfirm,
                          buttonName: AppTextConst.confirm),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AppAssets.nextButton,
                  height: 70.h,
                  width: 120.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
