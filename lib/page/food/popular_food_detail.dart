import 'package:ecommerce_app/page/food/icon_food.dart';
import 'package:ecommerce_app/styles/appColors.dart';
import 'package:ecommerce_app/styles/dimension.dart';
import 'package:ecommerce_app/widgets/app_column.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/expandable_text.dart';
import 'package:ecommerce_app/widgets/icon_text.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [positionShowImage(), positionIconBar(), positionText()]),
      bottomNavigationBar: Container(
        height: Dimension.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimension.height30,
            bottom: Dimension.height30,
            left: Dimension.width20,
            right: Dimension.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroudColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20 * 2),
            topRight: Radius.circular(Dimension.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [removAndaddIcon(), cartIcon()],
        ),
      ),
    );
  }

  Container cartIcon() {
    return Container(
      padding: EdgeInsets.only(
          top: Dimension.height10,
          bottom: Dimension.height10,
          left: Dimension.width10,
          right: Dimension.width10),
      child: BigText(
        text: "\$10 | add to cart",
        color: AppColors.whiteColor,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.radius20),
          color: AppColors.mainColor),
    );
  }

  Container removAndaddIcon() {
    return Container(
      padding: EdgeInsets.only(
          top: Dimension.height10,
          bottom: Dimension.height10,
          right: Dimension.width10,
          left: Dimension.width10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimension.radius20),
        color: AppColors.whiteColor,
      ),
      child: Row(
        children: [
          Icon(
            Icons.remove,
            color: AppColors.signColor,
          ),
          SizedBox(
            width: Dimension.width10,
          ),
          BigText(
            text: "0",
            color: AppColors.signColor,
          ),
          SizedBox(
            width: Dimension.width10,
          ),
          Icon(
            Icons.add,
            color: AppColors.signColor,
          )
        ],
      ),
    );
  }

  Positioned positionText() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: Dimension.popularFoodImagesSize - 20,
      child: Container(
        padding: EdgeInsets.only(
            left: Dimension.width20,
            right: Dimension.width20,
            top: Dimension.height20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimension.height20),
              topLeft: Radius.circular(Dimension.height20),
            ),
            color: AppColors.whiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppColumn("ອາຫານປອດເຄມີ"),
            SizedBox(height: Dimension.height20),
            BigText(text: "ແນະນໍາຂໍ້ມູນອາຫານ"),
            SizedBox(
              height: Dimension.height20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ExpandableText(
                    "ອາ​ຫານ​ທະ​ເລ​ແມ່ນ​ຮູບ​ແບບ​ຂອງ​ຊີ​ວິດ​ທະ​ເລ​ທີ່​ຖື​ວ່າ​ເປັນ​ອາ​ຫານ​ຂອງ​ມະ​ນຸດ​, ທີ່​ສໍາ​ຄັນ​ລວມ​ທັງ​ປາ​ແລະ​ຫອຍ​. Shellfish ປະກອບມີ molluscs ຊະນິດຕ່າງໆ (ເຊັ່ນ: molluscs bivalve ເຊັ່ນ clams, oysters ແລະ mussels, ແລະ cephalopods ເຊັ່ນ octopus ແລະ squid), crustaceans (ເຊັ່ນ: ກຸ້ງ, ປູ, ແລະ lobster), ແລະ echinoderms (ເຊັ່ນ: ແຕງທະເລແລະ urchins ທະເລ). ຕາມປະຫວັດສາດ, ສັດລ້ຽງລູກດ້ວຍນົມທາງທະເລເຊັ່ນ cetaceans (whale ແລະ dolphins) ເຊັ່ນດຽວກັນກັບປະທັບຕາໄດ້ຖືກກິນເປັນອາຫານ, ເຖິງແມ່ນວ່າມັນເກີດຂຶ້ນໃນຂອບເຂດຫນ້ອຍໃນຍຸກສະໄຫມໃຫມ່. ພືດທະເລທີ່ກິນໄດ້ເຊັ່ນ: ສາຫຼ່າຍທະເລບາງຊະນິດ ແລະຈຸນລະພາກຖືກກິນຢ່າງກວ້າງຂວາງເປັນຜັກທະເລໃນທົ່ວໂລກ, ໂດຍສະເພາະໃນອາຊີ."),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned positionIconBar() {
    return Positioned(
      top: Dimension.height45,
      left: Dimension.width20,
      right: Dimension.width20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIcons(appIcon: Icons.arrow_back_ios),
          AppIcons(appIcon: Icons.shopping_cart_outlined)
        ],
      ),
    );
  }

  Positioned positionShowImage() {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        width: double.maxFinite,
        height: Dimension.popularFoodImagesSize,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/food5.jpg"),
          ),
        ),
      ),
    );
  }
}
