import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient appClient;
  RecommendedProductRepo({ required this.appClient});

  Future<Response> getRecommendedProductList() async {
    return await appClient.getRecommendedData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}