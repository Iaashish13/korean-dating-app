import 'package:flutter/material.dart';

class CustomCheck extends StatefulWidget {
  final double? heightofCheckbox;
  final double? widthofCheckbox;
  final double? heightofCheck;
  final double? widthtofCheck;
  final Color? checkBoxBackgroundColor;
  final Color? checkBoxBorderColor;
  final VoidCallback? onchanged;
  bool? selected;

  CustomCheck(
      {Key? key,
      this.heightofCheckbox,
      this.widthofCheckbox,
      this.heightofCheck,
      this.widthtofCheck,
      this.selected,
      this.onchanged,
      this.checkBoxBackgroundColor,
      this.checkBoxBorderColor})
      : super(key: key);

  @override
  _CustomCheckState createState() => _CustomCheckState();
}

class _CustomCheckState extends State<CustomCheck> {
  // bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      onTap: widget.onchanged,
      // onTap: () {
      //   setState(() {
      //     widget.selected = !widget.selected!;
      //   });
      // },
      child: Container(
        height: widget.heightofCheckbox ?? 16,
        width: widget.widthofCheckbox ?? 16,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.checkBoxBackgroundColor ?? Colors.white,
            border:
                Border.all(color: widget.checkBoxBorderColor ?? Colors.white)),
        child: widget.selected == true
            ? Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: widget.heightofCheck ?? 10,
                  width: widget.widthtofCheck ?? 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
              )
            : Container(),
      ),
    ));
  }
}
