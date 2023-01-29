import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconText extends StatelessWidget {
  final IconData pIcon;
  final String pText;

  final Color pIconcolor;
  const IconText(
      {super.key,
      required this.pIcon,
      required this.pText,
      required this.pIconcolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          pIcon,
          color: pIconcolor,
        ),
        SizedBox(
          height: 5,
        ),
        SmallText(
          text: pText,
        )
      ],
    );
  }
}
