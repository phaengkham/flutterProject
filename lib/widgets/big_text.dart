import 'package:ecommerce_app/styles/appColors.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText(
      {Key? key,
      this.color = const Color(0xFF89dad0),
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'NotoSansLao',
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size),
    );
  }
}
