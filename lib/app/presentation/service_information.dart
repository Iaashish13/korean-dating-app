import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';
import 'package:middle_aged_dating/app/features/register/views/signup_screen.dart';

import '../core/constants/app_colors.dart';

class ServiceInformationScreen extends StatefulWidget {
  static const routeName = '/service_information_screen';

  const ServiceInformationScreen({Key? key}) : super(key: key);

  @override
  State<ServiceInformationScreen> createState() =>
      _ServiceInformationScreenState();
}

class _ServiceInformationScreenState extends State<ServiceInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.signUpBar),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              AppTextConst.serviceInformation,
              style: AppFonts.basicInfo,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            padding: EdgeInsets.only(
                left: 20.w, right: 15.w, top: 15.h, bottom: 15.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r)),
                color: AppColors.termsColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. 중/장년 돌싱, 싱글 분들을 위한 채팅 앱/웹)입니다.',
                  style: TextStyle(fontSize: 15.sp, letterSpacing: 1.2),
                ),
                SizedBox(height: 6.h),
                Text('2. 19세미만 미성년/청소년은 가입 금지입니다.',
                    style: TextStyle(fontSize: 15.sp, letterSpacing: 1.2)),
                SizedBox(height: 6.h),
                Text(
                  '3. 여성은 전면무료, 남성은 채팅방 이용시만 ',
                  style: AppFonts.privacyPolicy,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '구입한 하트가 필요합니다. ',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '그 외 가입/프로필열람은 모두 무료입니다.',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  '4. 광고없으며 제3자에게 정보를 제공하지않습니다.',
                  style: AppFonts.privacyPolicy,
                ),
                SizedBox(height: 6.h),
                Text(
                  '5. 회원의 이름/전화번호/ 중요개인정보 등은',
                  style: AppFonts.privacyPolicy,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '타에게 보여지지않으며, 보호됩니다.',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  '6. 회원의 폰위치정보를 수집하지않습니다.',
                  style: AppFonts.privacyPolicy,
                ),
                SizedBox(height: 6.h),
                Text(
                  '7. 주요기능인 채팅기능은 회원목록의 채팅버튼을',
                  style: AppFonts.privacyPolicy,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '선택하시거나 채팅목록을 선택하시면 바로 ',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '채팅화면으로 이동됩니다.단.  ',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '남성회원은 하트를 보유하고있을 때 가능합니다. ',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '하트는 메인 - 내프로필 우측 및 채팅화면 내 ',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    '충전버튼으로 충전을 하실 수있습니다',
                    style: AppFonts.privacyPolicy,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text('주의사항: 불건전한사진 게재, 언어폭력, 성희롱 및',
                    style: AppFonts.privacyPolicyColorful),
                Text(
                  '성매매, 중요개인정보 기재 및 타 SNS 연락처 사용시',
                  style: AppFonts.privacyPolicyColorful,
                ),
                Text(
                  '통보없이 회원탈퇴가될 수 있습니다.',
                  style: AppFonts.privacyPolicyColorful,
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 100.h),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(SignUpScreen.routeName);
              },
              child: Image.asset(
                AppAssets.nextButton,
                height: 70.h,
                width: 120.w,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
