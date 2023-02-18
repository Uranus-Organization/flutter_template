import 'package:quiche_vpn/data/api/api_client/api_client_type.dart';
import 'package:quiche_vpn/data/api/request/brand_request.dart';
import 'package:quiche_vpn/data/api/request/recommend_dishes_request.dart';
import 'package:quiche_vpn/data/api/response/brand_response.dart';
import 'package:quiche_vpn/data/api/response/dish_response.dart';
import 'sliver_datasource_type.dart';

class SliverDataSource implements SliverDataSourceType {
  SliverDataSource({required this.apiClient});

  final APIClientType apiClient;

  @override
  Future<BrandResponse> getBrand({required BrandRequest request}) async {
    return await apiClient.getBrand(id: request.id);
  }

  @override
  Future<List<DishResponse>> getRecommendDishes({
    required RecommendDishesRequest request,
  }) async {
    return await apiClient.getRecommendDishes(id: request.id);
  }
}
