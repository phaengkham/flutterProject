import 'package:ecommerce_app/page/food/icon_food.dart';
import 'package:ecommerce_app/styles/appColors.dart';
import 'package:ecommerce_app/styles/dimension.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/expandable_text.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: scrollFunction(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
            top: Dimension.height10,
            bottom: Dimension.height10,
            left: Dimension.width20,
            right: Dimension.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroudColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20),
            topRight: Radius.circular(Dimension.radius20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            removeAndaddMenthod(),
            Container(
              padding: EdgeInsets.only(
                  left: Dimension.width10, right: Dimension.width10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  removAndaddIcon(),
                  cartIcon(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container removeAndaddMenthod() {
    return Container(
      padding: EdgeInsets.only(
          left: Dimension.width20 * 2.5,
          right: Dimension.width20 * 2.5,
          top: Dimension.height10,
          bottom: Dimension.height10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIcons(
              appIconSize: Dimension.iconSize24,
              appBackgroundColor: AppColors.mainColor,
              appColor: AppColors.whiteColor,
              appIcon: Icons.remove),
          BigText(
            text: "\$19.99 " + " X " + " 0 ",
            color: AppColors.mainBlack,
            size: Dimension.font26,
          ),
          AppIcons(
              appIconSize: Dimension.iconSize24,
              appBackgroundColor: AppColors.mainColor,
              appColor: AppColors.whiteColor,
              appIcon: Icons.add)
        ],
      ),
    );
  }

  CustomScrollView scrollFunction() {
    return CustomScrollView(slivers: [
      SliverAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcons(appIcon: Icons.clear),
            AppIcons(appIcon: Icons.shopping_cart_outlined)
          ],
        ),
        expandedHeight: 300,
        toolbarHeight: 100,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 5, bottom: Dimension.height10),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.radius20),
                      topRight: Radius.circular(Dimension.radius20))),
              child: Center(
                  child: BigText(
                text: "ລາຍການອາຫານ",
              ))),
        ),
        backgroundColor: AppColors.yellowColor,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "assets/images/food5.jpg",
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    left: Dimension.width10, right: Dimension.width20),
                child: ExpandableText(
                    "Google Translate is a multilingual neural machine translation service developed by Google to translate text, documents and websites from one language into another. It offers a website interface, a mobile app for Android and iOS, and an API that helps developers build browser extensions and software applicationsGoogle Translate is a multilingual neural machine translation service developed by Google to translate text, documents and websites from one language into another. It offers a website interface, a mobile app for Android and iOS, and an API that helps developers build browser extensions and software applicationsGoogle Translate is a multilingual neural machine translation service developed by Google to translate text, documents and websites from one language into another. It offers a website interface, a mobile app for Android and iOS, and an API that helps developers build browser extensions and software applicationsອາ​ຫານ​ທະ​ເລ​ແມ່ນ​ຮູບ​ແບບ​ຂອງ​ຊີ​ວິດ​ທະ​ເລ​ທີ່​ຖື​ວ່າ​ເປັນ​ອາ​ຫານ​ຂອງ​ມະ​ນຸດ​, ທີ່​ສໍາ​ຄັນ​ລວມ​ທັງ​ປາ​ແລະ​ຫອຍ​. Shellfish ປະກອບມີ molluscs ຊະນິດຕ່າງໆ (ເຊັ່ນ: molluscs bivalve ເຊັ່ນ clams, oysters ແລະ mussels, ແລະ cephalopods ເຊັ່ນ octopus ແລະ squid), crustaceans (ເຊັ່ນ: ກຸ້ງ, ປູ, ແລະ lobster), ແລະ echinoderms (ເຊັ່ນ: ແຕງທະເລແລະ urchins ທະເລ). ຕາມປະຫວັດສາດ, ສັດລ້ຽງລູກດ້ວຍນົມທາງທະເລເຊັ່ນ cetaceans (whale ແລະ dolphins) ເຊັ່ນດຽວກັນກັບປະທັບຕາໄດ້ຖືກກິນເປັນອາຫານ, ເຖິງແມ່ນວ່າມັນເກີດຂຶ້ນໃນຂອບເຂດຫນ້ອຍໃນຍຸກສະໄຫມໃຫມ່. ພືດທະເລທີ່ກິນໄດ້ເຊັ່ນ: ສາຫຼ່າຍທະເລບາງຊະນິດ ແລະຈຸນລະພາກຖືກກິນຢ່າງກວ້າງຂວາງເປັນຜັກທະເລໃນທົ່ວໂລກ, ໂດຍສະເພາະໃນອາຊີ.")),
          ],
        ),
      )
    ]);
  }
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
      borderRadius: BorderRadius.circular(Dimension.radius20 / 2),
      color: AppColors.whiteColor,
    ),
    child: Row(
      children: [
        Icon(
          Icons.favorite,
          color: AppColors.mainColor,
        )
      ],
    ),
  );
}
