import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/core/constants/app_text_constants.dart';

class CustomDropDownGeneric<T> extends StatefulWidget {
  final ValueChanged<T?>? onChanged;
  final List<T> desiredList;
  final T? selectedValue;

  const CustomDropDownGeneric({
    Key? key,
    required this.desiredList,
    required this.onChanged,
    this.selectedValue,
  }) : super(key: key);

  @override
  _CustomDropDownGenericState createState() => _CustomDropDownGenericState();
}

class _CustomDropDownGenericState<T> extends State<CustomDropDownGeneric> {
  T? currentChoosedValue;

  @override
  void initState() {
    currentChoosedValue = widget.selectedValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      padding: EdgeInsets.only(left: 10.w, top: 3.h, bottom: 4.h),
      color: Colors.white,
      child: DropdownButton<T>(
        value: widget.selectedValue,
        focusColor: Colors.white,
        underline: Container(
          color: Colors.white,
        ),
        iconSize: 54.h,
        icon: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(bottom: 16.h),
          child: const Icon(Icons.arrow_drop_down),
        ),
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        items: widget.desiredList
            .map((valueItem) => DropdownMenuItem<T>(
                  child: Text(valueItem),
                  value: valueItem,
                ))
            .toList(),
        onChanged: widget.onChanged,
      ),
    );
  }
}
