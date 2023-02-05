import 'package:ecommerce_app/styles/appColors.dart';
import 'package:ecommerce_app/styles/dimension.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/icon_text.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppColumn extends StatelessWidget {
  final String pText;
  const AppColumn(this.pText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: pText,
          size: Dimension.font26,
        ),
        SizedBox(height: Dimension.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(width: 10),
            SmallText(text: "4.5"),
            SizedBox(width: 10),
            SmallText(text: "1789"),
            SizedBox(width: 10),
            SmallText(text: "ຄໍາເຫັນ")
          ],
        ),
        SizedBox(height: Dimension.height10),
        iconText()
      ],
    );
  }
}

Row iconText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconText(
          pIcon: Icons.circle_sharp,
          pText: "Nomal",
          pIconcolor: AppColors.yellowColor),
      SizedBox(width: Dimension.width10),
      IconText(
          pIcon: Icons.location_on,
          pText: "199.95",
          pIconcolor: AppColors.mainColor),
      SizedBox(width: Dimension.width10),
      IconText(
          pIcon: Icons.access_time_rounded,
          pText: "19",
          pIconcolor: AppColors.iconColor2)
    ],
  );
}
