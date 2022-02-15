import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_fonts.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';

class BirthWidget extends StatefulWidget {
  const BirthWidget({Key? key}) : super(key: key);

  @override
  _BirthWidgetState createState() => _BirthWidgetState();
}

class _BirthWidgetState extends State<BirthWidget> {
  final dates = ['1990', '1991', '1992', '1993'];
  String? choosedDate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          AppTextConst.yearofBirth,
          style: AppFonts.nameAndButton,
        ),
        SizedBox(
          width: 8.h,
        ),
        Container(
          height: 45.h,
          padding: EdgeInsets.only(left: 20.w, top: 3.h, bottom: 4.h),
          color: Colors.white,
          child: DropdownButton<String>(
            value: choosedDate,
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
            items: dates
                .map((valueItem) => DropdownMenuItem(
                      child: Text(valueItem),
                      value: valueItem,
                    ))
                .toList(),
            onChanged: (newValue) => setState(
              () => choosedDate = newValue,
            ),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        SizedBox(
          height: 45.h,
          width: 150.w,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
              hintText: AppTextConst.name,
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
      ],
    );
  }
}
