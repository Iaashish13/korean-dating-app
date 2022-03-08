import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownGeneric<T> extends StatefulWidget {
  final ValueChanged<T?>? onChanged;
  final List<T> desiredList;
  final T? selectedValue;
  final T? hintText;
  final Color? color;
  final T? hintStyle;
  final T? textStyle;
  final T? dropdownColor;
  final T? iconWidget;
  final Color? iconColor;
  final double? heightofContainer;
  final EdgeInsetsGeometry? iconPadding;
  final double? iconSize;

  const CustomDropDownGeneric(
      {Key? key,
      required this.onChanged,
      required this.desiredList,
      this.iconSize,
      this.hintStyle,
      this.iconWidget,
      this.color,
      this.heightofContainer,
      this.selectedValue,
      this.hintText,
      this.dropdownColor,
      this.iconColor,
      this.iconPadding,
      this.textStyle})
      : super(key: key);

  @override
  _CustomDropDownGenericState createState() => _CustomDropDownGenericState();
}

class _CustomDropDownGenericState<T> extends State<CustomDropDownGeneric> {
  // T? currentChoosedValue;

  // @override
  // void initState() {
  //   currentChoosedValue = widget.selectedValue;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightofContainer ?? 45.h,
      padding: EdgeInsets.only(left: 10.w, top: 3.h, bottom: 4.h),
      color: widget.color ?? Colors.white,
      child: DropdownButton<T>(
        dropdownColor: widget.dropdownColor,
        hint: Text(
          widget.hintText ?? '',
          style: widget.hintStyle ?? TextStyle(color: Colors.black),
        ),
        value: widget.selectedValue,
        focusColor: Colors.white,
        underline: Container(
          color: Colors.white,
        ),
        style: widget.textStyle,
        iconSize: widget.iconSize ?? 54.h,
        icon: widget.iconWidget ??
            Container(
              alignment: Alignment.topCenter,
              padding: widget.iconPadding ?? EdgeInsets.only(bottom: 16.h),
              child: const Icon(Icons.arrow_drop_down),
            ),
        iconEnabledColor: widget.iconColor ?? Colors.black,
        iconDisabledColor: widget.iconColor ?? Colors.black,
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
