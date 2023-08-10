import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import '../api/api_client.dart';

class PopularProductRepo extends GetxService {
  final ApiClient appClient;
  PopularProductRepo({ required this.appClient});

   Future<Response> getPopularProductList() async {
     return await appClient.getData("/api/v1/products/popular");
   }
}