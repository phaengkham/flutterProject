import 'package:ecommerce_app/home/food_page_body.dart';
import 'package:ecommerce_app/styles/appColors.dart';
import 'package:ecommerce_app/styles/dimension.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          textBar(),
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      ),
    );
  }

  Container textBar() {
    return Container(
      child: Container(
        margin: EdgeInsets.only(
            top: Dimension.height45, bottom: Dimension.height15),
        padding:
            EdgeInsets.only(left: Dimension.width20, right: Dimension.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: "ນະຄອນຫຼວງວຽງຈັນ"),
                Row(
                  children: [
                    SmallText(
                      text: "ປະເທດລາວ",
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_rounded),
                    ),
                  ],
                )
              ],
            ),
            Center(
              child: Container(
                width: Dimension.height45,
                height: Dimension.height45,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: Dimension.iconSize24,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    color: AppColors.mainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
