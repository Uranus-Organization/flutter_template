import 'package:dartz/dartz.dart';
import 'package:quiche_vpn/domain/model/brand.dart';
import 'package:quiche_vpn/domain/model/dish.dart';
import 'package:quiche_vpn/domain/model/failure.dart';
import 'package:quiche_vpn/domain/translator/sliver_translator.dart';
import 'package:quiche_vpn/domain/usecase/sliver/sliver_usecase_type.dart';
import 'package:quiche_vpn/repository/sliver/sliver_repository_type.dart';

class SliverUseCase extends SliverUseCaseType {
  SliverUseCase({required this.repository});

  SliverRepositoryType repository;

  @override
  Future<Either<Failure, Tuple2<Brand, List<DishCategory>>>> getBrand({
    required int id
  }) async {
    final result = await repository.getBrand(id: id);
    return result.fold((errorResponse) {
      return Left(Failure(message: errorResponse.message));
    }, (response) {
      final brand = SliverTranslator.toBrandModel(response: response);
      final dishCategories = SliverTranslator.toDishCategories(brand: brand);
      return Right(Tuple2(brand, dishCategories));
    });
  }

  @override
  Future<Either<Failure, List<Dish>>> getRecommendDishes({
    required int id
  }) async {
    final result = await repository
        .getRecommendDishes(id: id);
    return result.fold((errorResponse) {
      return Left(Failure(message: errorResponse.message));
    }, (response) {
      return Right(SliverTranslator.toRecommendDishes(dishes: response));
    });
  }
}