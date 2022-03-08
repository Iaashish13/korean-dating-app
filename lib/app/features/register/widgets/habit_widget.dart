import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';

class Habit extends StatelessWidget {
  final Color? color;
  final String? text;

  const Habit({Key? key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        text!,
        style: AppFonts.genderAndAge.copyWith(fontSize: 18.sp),
      ),
    );
  }
}
