import 'package:ecommerce_app/controllers/popular_product_controllers.dart';
import 'package:ecommerce_app/data/api/api_client.dart';
import 'package:ecommerce_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => APIClient(appBaseUrl: "http://www.baby.com"));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
