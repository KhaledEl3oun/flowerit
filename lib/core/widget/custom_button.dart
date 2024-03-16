// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  const custom_button({
    Key? key,
    required this.color,
    required this.text,
    required this.textStyle,
    required this.height,
    required this.width,
  }) : super(key: key);
  final Color color;
  final String text;
  final TextStyle textStyle;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: color),
      child: Center(
          child: Text(
        text,
        style: textStyle,
      )),
    );
  }
}
