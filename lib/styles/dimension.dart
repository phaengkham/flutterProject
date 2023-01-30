import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageTextContainer = screenHeight / 7.84;
  static double pageView = screenHeight / 2.64;
  //dynamic height padding and margin
  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height15 = screenHeight / 56.27;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;
  //dynamic width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width20 = screenHeight / 42.2;
  static double width15 = screenHeight / 56.27;
  static double width30 = screenHeight / 28.13;
  //dynamic font
  static double font20 = screenHeight / 42.2;
  //dynamic radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  //dynamic icon
  static double iconSize24 = screenHeight / 35.17;
  //list view size
  static double listViewImagesize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.5;
}
