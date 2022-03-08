import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_assets.dart';
import 'package:middle_aged_dating/app/core/constants/app_colors.dart';

class GoldenAppBar extends StatelessWidget {
  const GoldenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 6.h),
      color: AppColors.goldenAppbarColor,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
                child: Image.asset(
                  AppAssets.appIcon,
                  height: 70.h,
                  width: 70.w,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 6.h),
                    child: Row(
                      children: [
                        Image.asset(
                          AppAssets.companyInformation,
                          width: 95.w,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Image.asset(
                          AppAssets.service,
                          width: 95.w,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Image.asset(
                          AppAssets.centerNotice,
                          width: 95.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.w, top: 10.h),
                    child: Image.asset(
                      AppAssets.ninteenYearsOld,
                      fit: BoxFit.fill,
                      width: 0.75.sw,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 10.h,
            right: 20.w,
            child: Image.asset(
              AppAssets.redYellowHeart,
              width: 35.w,
            ),
          ),
          Positioned(
            bottom: 4.h,
            right: 10.w,
            child: Image.asset(
              AppAssets.viewPolicy,
              width: 75.w,
            ),
          ),
        ],
      ),
    );
  }
}
