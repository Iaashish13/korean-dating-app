import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';
import 'package:middle_aged_dating/app/core/widgets/customWidgets.dart';
import 'package:middle_aged_dating/app/core/widgets/golden_appbar.dart';
import 'package:middle_aged_dating/app/features/register/widgets/dropdown_widget.dart';
import 'package:middle_aged_dating/app/features/register/widgets/habit_widget.dart';
import '../../../core/constants/app_colors.dart';

class MaleChatScreen extends StatefulWidget {
  static const routeName = 'male_chatScreen';
  const MaleChatScreen({Key? key}) : super(key: key);

  @override
  _MaleChatScreenState createState() => _MaleChatScreenState();
}

class _MaleChatScreenState extends State<MaleChatScreen> {
  String? _selectedAge;
  String? _selectedArea;
  String? _selectedNickname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const GoldenAppBar(),
            Container(
              color: AppColors.maleRowColor,
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 145.h,
                    width: 85.w,
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
                    width: 2.w,
                  ),
                  Container(
                    height: 145.h,
                    width: 85.w,
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
                    width: 2.w,
                  ),
                  Container(
                    height: 145.h,
                    width: 85.w,
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
                  Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              // margin: EdgeInsets.only(
                              //     left: 4.w, right: 6.w, top: 4.h, bottom: 4.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.w, vertical: 1.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.r),
                                ),
                              ),
                              child: Text(
                                AppTextConst.male62yearsold,
                                style: AppFonts.genderAndAge,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 4.w,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.w, vertical: 1.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.r),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    AppTextConst.heart,
                                    style: AppFonts.heartFont,
                                  ),
                                  Image.asset(
                                    AppAssets.heart,
                                    width: 16.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    '350',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.heartNumberColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                AppTextConst.nickNameChatScreen,
                                style: AppFonts.nickNameStyle,
                              ),
                            ),
                            SizedBox(
                              width: 67.w,
                            ),
                            Image.asset(
                              AppAssets.chargeButton,
                              width: 62.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          AppTextConst.nickNameofPerson,
                          style: AppFonts.nickNameStyle
                              .copyWith(color: Colors.black, fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CustomWidgets().containerWithtext(
                                        text: AppTextConst.dosling),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    CustomWidgets().containerWithtext(
                                        text: AppTextConst.chubby),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Row(
                                  children: <Widget>[
                                    CustomWidgets().containerWithtext(
                                        text: AppTextConst.smoking),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    CustomWidgets().containerWithtext(
                                        text: AppTextConst.likestoDrink),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                AppAssets.editMyProfile,
                                width: 70.w,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: Platform.isAndroid ? 0.69.sh : 0.65.sh,
                  decoration: const BoxDecoration(
                      color: AppColors.blueBackground,
                      boxShadow: [
                        BoxShadow(),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2.w),
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(4.r)),
                            child: Text(
                              AppTextConst.femaleMember,
                              style: AppFonts.memberStyle,
                            ),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Image.asset(
                            AppAssets.roomList,
                            height: 25.h,
                            width: 48.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomDropDownGeneric(
                            heightofContainer: 25.h,
                            color: AppColors.dropDownColor,
                            dropdownColor: AppColors.dropDownColor,
                            iconWidget: const Icon(Icons.arrow_drop_down),
                            onChanged: <String>(val) {
                              setState(() {
                                _selectedArea = val.toString();
                              });
                            },
                            iconSize: 25.h,
                            iconPadding: EdgeInsets.zero,
                            selectedValue: _selectedArea,
                            desiredList: const ['지역1', '지역2', '지역3'],
                            hintText: AppTextConst.area,
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 12),
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 11),
                            iconColor: AppColors.dropDownIconColor,
                          ),
                          SizedBox(
                            width: 0.5.w,
                          ),
                          CustomDropDownGeneric(
                            heightofContainer: 25.h,
                            color: AppColors.dropDownColor,
                            dropdownColor: AppColors.dropDownColor,
                            iconWidget: const Icon(Icons.arrow_drop_down),
                            onChanged: <String>(val) {
                              setState(() {
                                _selectedAge = val.toString();
                              });
                            },
                            iconSize: 25.h,
                            iconPadding: EdgeInsets.zero,
                            selectedValue: _selectedAge,
                            desiredList: const ['19', '20', '21'],
                            hintText: AppTextConst.age,
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 12),
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 11),
                            iconColor: AppColors.dropDownIconColor,
                          ),
                          SizedBox(
                            width: 0.5.w,
                          ),
                          Container(
                            height: 25.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 2.w),
                            decoration: const BoxDecoration(
                                color: AppColors.dropDownColor),
                            child: Icon(
                              Icons.search,
                              color: Colors.pink,
                              size: 20.h,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2.w),
                              height: 115.h,
                              width: 60.w,
                              color: Colors.red,
                              child: Image.asset(
                                AppAssets.female,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: <Widget>[
                                    Text(
                                      AppTextConst.nickName,
                                      style: AppFonts.divorceSingle
                                          .copyWith(fontSize: 17.sp),
                                    ),
                                    SizedBox(width: 65.w),
                                    Text(AppTextConst.twentytwoyearsOld,
                                        style: AppFonts.memberStyle),
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Text(AppTextConst.single,
                                        style: AppFonts.memberStyle
                                            .copyWith(color: Colors.white)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      AppTextConst.nickNameofPerson,
                                      style: AppFonts.divorceSingle.copyWith(
                                          fontSize: 17.sp, color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: <Widget>[
                                    const Habit(
                                      text: AppTextConst.smoking,
                                      color: AppColors.smokingContainerColor,
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    const Habit(
                                      text: AppTextConst.likestoDrink,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Habit(
                                      text: AppTextConst.shapeGlamour,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      AppAssets.chatIcon,
                                      width: 55.w,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Image.asset(
                                      AppAssets.heartIconwithText,
                                      width: 40.w,
                                    ),
                                    SizedBox(
                                      width: 45.w,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Image.asset(
                                          AppAssets.blockButton,
                                          width: 34.w,
                                        ),
                                        Image.asset(
                                          AppAssets.reportButton,
                                          width: 34.w,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          AppAssets.chatImage,
                          fit: BoxFit.fitHeight,
                          height: Platform.isAndroid ? 0.69.sh : 0.65.sh,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.chatList,
                                width: 68.w,
                              ),
                              SizedBox(
                                width: 8.h,
                              ),
                              CustomDropDownGeneric(
                                heightofContainer: 25.h,
                                color: AppColors.dropDownColor,
                                dropdownColor: AppColors.dropDownColor,
                                iconWidget: const Icon(Icons.arrow_drop_down),
                                onChanged: <String>(val) {
                                  setState(() {
                                    _selectedNickname = val.toString();
                                  });
                                },
                                iconSize: 25.h,
                                iconPadding: EdgeInsets.zero,
                                selectedValue: _selectedNickname,
                                desiredList: const [
                                  'nickName1',
                                  'nickName2',
                                  'nickName3'
                                ],
                                hintText: AppTextConst.nickName,
                                hintStyle: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 11),
                                iconColor: AppColors.dropDownIconColor,
                              ),
                              Container(
                                height: 25.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.w, vertical: 2.w),
                                decoration: const BoxDecoration(
                                    color: AppColors.dropDownColor),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.pink,
                                  size: 20.h,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Card(
                            elevation: 0.2,
                            color: AppColors.chatListContainerColor,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 3.h),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.r),
                                    child: Image.asset(
                                      AppAssets.female,
                                      height: 42.h,
                                      width: 42.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.w, top: 3.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppTextConst.nickName,
                                        style: AppFonts.memberStyle.copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        AppTextConst.welcomeText,
                                        style: AppFonts.memberStyle.copyWith(
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                      Text(
                                        '2022/03/45 10:11:12',
                                        style: AppFonts.memberStyle.copyWith(
                                          fontSize: 8.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  AppTextConst.twentytwoyearsOld,
                                  style: AppFonts.memberStyle
                                      .copyWith(fontSize: 11.sp),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        AppAssets.blockButton,
                                        width: 30.w,
                                      ),
                                      Image.asset(
                                        AppAssets.reportButton,
                                        width: 30.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
