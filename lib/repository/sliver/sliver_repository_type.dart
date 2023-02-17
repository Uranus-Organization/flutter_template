import 'package:dartz/dartz.dart';
import 'package:quiche_vpn/data/error_response.dart';
import 'package:quiche_vpn/data/api/response/brand_response.dart';
import 'package:quiche_vpn/data/api/response/dish_response.dart';

abstract class SliverRepositoryType {
  // Get brand
  Future<Either<ErrorResponse, BrandResponse>> getBrand({required int id});
  // Get recommend dishes
  Future<Either<ErrorResponse, List<DishResponse>>> getRecommendDishes({
    required int id
  });
}