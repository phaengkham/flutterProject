import 'package:ecommerce_app/page/food/popular_food_detail.dart';
import 'package:ecommerce_app/page/food/recommended_food_detail.dart';
import 'package:ecommerce_app/page/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_appa',
      home: RecommenedFoodDetail(),
    );
  }
}
