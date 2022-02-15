import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

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
        height: 16,
        width: 16,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(color: Colors.white)),
        child: _value
            ? Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
              )
            : Container(),
      ),
    ));
  }
}
