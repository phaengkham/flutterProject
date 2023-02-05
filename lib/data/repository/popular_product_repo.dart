import 'package:ecommerce_app/data/api/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final APIClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList() async {
    return await apiClient.getData("http://www.baby.com");
  }
}
