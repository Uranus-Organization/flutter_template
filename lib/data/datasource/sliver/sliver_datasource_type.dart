import 'package:quiche_vpn/data/api/request/brand_request.dart';
import 'package:quiche_vpn/data/api/request/recommend_dishes_request.dart';
import 'package:quiche_vpn/data/api/response/brand_response.dart';
import 'package:quiche_vpn/data/api/response/dish_response.dart';

abstract class SliverDataSourceType {
  // Get brand
  Future<BrandResponse> getBrand({required BrandRequest request});
  // Get recommend dishes
  Future<List<DishResponse>> getRecommendDishes({required RecommendDishesRequest request});
}