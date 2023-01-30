import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/styles/appColors.dart';
import 'package:ecommerce_app/styles/dimension.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/icon_text.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scalefactor = 0.8;
  double _height = Dimension.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listMenuVertical(),
        dotAnimation(),
        SizedBox(
          height: Dimension.height30,
        ),
        popularText(),
        listMenuHorizontal()
      ],
    );
  }

  DotsIndicator dotAnimation() {
    return new DotsIndicator(
      dotsCount: 5,
      position: _currPageValue,
      decorator: DotsDecorator(
        activeColor: AppColors.mainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  Container popularText() {
    return Container(
      margin: EdgeInsets.only(left: Dimension.width30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BigText(text: "ອາຫານຍອດນິຍົມ"),
          Container(
            //margin: EdgeInsets.only(bottom: 1),
            child: BigText(
              text: ".",
              color: AppColors.mainBlack,
            ),
          ),
          SizedBox(
            width: Dimension.width10,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: SmallText(
              text: "ຈັດຄູ່ອາຫານ",
            ),
          ),
          // food and images
        ],
      ),
    );
  }

  Container listMenuVertical() {
    return Container(
      //color: AppColors.mainColor,
      height: Dimension.pageView,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageitem(position);
          }),
    );
  }

  Container listMenuHorizontal() {
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                  bottom: Dimension.height10),
              child: Row(
                children: [
                  Container(
                    height: Dimension.listViewImagesize,
                    width: Dimension.listViewImagesize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Dimension.radius20,
                      ),
                      color: AppColors.whiteColor,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/food11.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: Dimension.listViewTextContSize,
                      height: Dimension.listViewTextContSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimension.radius20),
                            bottomRight: Radius.circular(
                              Dimension.radius20,
                            )),
                        color: AppColors.buttonBackgroudColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: Dimension.width10, right: Dimension.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: "ອາຫານທໍາມະຊາດອາຫານສົດ"),
                            SizedBox(
                              height: Dimension.height10,
                            ),
                            SmallText(text: "ອາຫານທໍາມະຊາດແມ່ນອາຫານປອດເຄມີ"),
                            SizedBox(
                              height: Dimension.height10,
                            ),
                            iconText()
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget _buildPageitem(int index) {
    Matrix4 matrix4 = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalefactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scalefactor + (_currPageValue - index + 1) * (1 - _scalefactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index + 1) * (1 - _scalefactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scalefactor) / 2, 1);
    }
    return Transform(
      transform: matrix4,
      child: Stack(children: [
        Container(
          height: Dimension.pageViewContainer,
          margin: EdgeInsets.only(
              left: Dimension.width10, right: Dimension.width10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimension.radius30),
            color: index.isEven ? AppColors.iconColor1 : AppColors.iconColor2,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/food11.png"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dimension.pageTextContainer,
            margin: EdgeInsets.only(
                left: Dimension.width30,
                right: Dimension.width30,
                bottom: Dimension.height30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadowColor,
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: AppColors.whiteColor,
                    blurRadius: 1.0,
                    offset: Offset(0, 5),
                  )
                ]),
            child: Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: Dimension.height10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "ອາຫານເສີມ"),
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
              ),
            ),
          ),
        ),
      ]),
    );
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
}
