import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_colors.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';
import 'package:middle_aged_dating/app/core/widgets/custom_checkbox.dart';
import 'package:middle_aged_dating/app/core/widgets/cusotm_button.dart';
import 'package:middle_aged_dating/app/features/malechat/views/male_chat_screen.dart';
import 'package:middle_aged_dating/app/features/register/widgets/dropdown_widget.dart';

class AnotherSignUpScreen extends StatefulWidget {
  static const routeName = '/another_signUpScreen';
  const AnotherSignUpScreen({Key? key}) : super(key: key);

  @override
  _AnotherSignUpScreenState createState() => _AnotherSignUpScreenState();
}

class _AnotherSignUpScreenState extends State<AnotherSignUpScreen> {
  String? _choosedTry;
  String? _selectedCountry;

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          AppTextConst.hopeArea,
                          style: AppFonts.nameAndButtonB,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomDropDownGeneric(
                            hintText: AppTextConst.tryy,
                            desiredList: const ["try ", "do not try"],
                            selectedValue: _choosedTry,
                            onChanged: <String>(val) {
                              setState(() {
                                _choosedTry = val.toString();
                              });
                            }),
                        const Spacer(),
                        CustomDropDownGeneric(
                          hintText: AppTextConst.country,
                          desiredList: const ["korea", "nepal", "india"],
                          selectedValue: _selectedCountry,
                          onChanged: <String>(val) {
                            setState(() {
                              _selectedCountry = val.toString();
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        Text(
                          AppTextConst.smokingOrNonsmoking,
                          style: AppFonts.nameAndButtonB,
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.smoking,
                          style: AppFonts.divorceSingleB,
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.nonSmoking,
                          style: AppFonts.divorceSingleB,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          AppTextConst.alcohol,
                          style: AppFonts.nameAndButtonB,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.alcoholLike,
                          style: AppFonts.divorceSingleB,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.alcholDislike,
                          style: AppFonts.divorceSingleB,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.alcholNormal,
                          style: AppFonts.divorceSingleB,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          AppTextConst.myBody,
                          style: AppFonts.nameAndButtonB,
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.myBodDry,
                          style: AppFonts.divorceSingleB,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.myBodyUsually,
                          style: AppFonts.divorceSingleB,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.myBodyNormal,
                          style: AppFonts.divorceSingleB,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          AppTextConst.shape,
                          style: AppFonts.nameAndButtonB,
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.shapeBulky,
                          style: AppFonts.divorceSingleB,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.shapeGlamour,
                          style: AppFonts.divorceSingleB,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        const CustomCheckBox(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          AppTextConst.shapeMuscular,
                          style: AppFonts.divorceSingleB,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    SizedBox(
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AppTextConst.profilePicture,
                                style: AppFonts.nameAndButtonB,
                              ),
                              Text(
                                AppTextConst.posting,
                                style: AppFonts.nameAndButtonB,
                              ),
                              Text(
                                AppTextConst.atleastOne,
                                style: AppFonts.divorceSingleB,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 120.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: AppColors.ppContainerColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Icon(
                                  Icons.add_outlined,
                                  color: Colors.white,
                                  size: 50.h,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                height: 120.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: AppColors.ppContainerColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Icon(
                                  Icons.add_outlined,
                                  color: Colors.white,
                                  size: 50.h,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                height: 120.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: AppColors.ppContainerColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Icon(
                                  Icons.add_outlined,
                                  color: Colors.white,
                                  size: 50.h,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            AppTextConst.noViolentImage,
                            style: AppFonts.nameAndButton,
                          ),
                          Text(
                            AppTextConst.reviewByOperator,
                            style: AppFonts.divorceSingle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomButtons().roundedElevatedButton(AppTextConst.joining, () {
              Navigator.pushNamed(context, MaleChatScreen.routeName);
            }, Colors.blue.shade400, Colors.white,
                AppFonts.nameAndButtonB.copyWith(fontSize: 26.sp),
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.w),
                borderRadius: 6)
          ],
        ),
      ),
    );
  }
}
