import 'package:ecommerce_app/styles/appColors.dart';
import 'package:ecommerce_app/styles/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppIcons extends StatelessWidget {
  final IconData appIcon;
  final Color appBackgroundColor;
  final Color appColor;
  final double appSize;
  final double appIconSize;
  AppIcons(
      {Key? key,
      required this.appIcon,
      this.appColor = const Color(0xFF756d54),
      this.appSize = 40,
      this.appBackgroundColor = const Color(0xFFfcf4e2),
      this.appIconSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: appSize,
      height: appSize,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(appSize / 2),
          color: appBackgroundColor),
      child: Icon(
        appIcon,
        color: appColor,
        size: Dimension.iconSize16,
      ),
    );
  }
}
