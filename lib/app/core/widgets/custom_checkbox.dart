import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final double? heightofCheckbox;
  final double? widthofCheckbox;
  final double? heightofCheck;
  final double? widthtofCheck;
  final Color? checkBoxBackgroundColor;
  final Color? checkBoxBorderColor;
  final VoidCallback? onchanged;

  const CustomCheckBox(
      {Key? key,
      this.heightofCheckbox,
      this.widthofCheckbox,
      this.heightofCheck,
      this.widthtofCheck,
      this.onchanged,
      this.checkBoxBackgroundColor,
      this.checkBoxBorderColor})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      onTap: () {
        setState(() {
          _value = !_value;
        });
      },
      child: Container(
        height: widget.heightofCheckbox ?? 16,
        width: widget.widthofCheckbox ?? 16,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.checkBoxBackgroundColor ?? Colors.white,
            border:
                Border.all(color: widget.checkBoxBorderColor ?? Colors.white)),
        child: _value
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
