import 'package:dartz/dartz.dart';
import 'package:quiche_vpn/domain/model/brand.dart';
import 'package:quiche_vpn/domain/model/dish.dart';
import 'package:quiche_vpn/domain/model/failure.dart';

abstract class SliverUseCaseType {
  // Get brand
  Future<Either<Failure, Tuple2<Brand, List<DishCategory>>>> getBrand({
    required int id
  });
  // Get recommend dishes
  Future<Either<Failure, List<Dish>>> getRecommendDishes({
    required int id
  });
}