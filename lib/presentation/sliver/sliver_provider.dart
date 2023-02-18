import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:quiche_vpn/domain/model/brand.dart';
import 'package:quiche_vpn/domain/model/dish.dart';
import 'package:quiche_vpn/domain/usecase/sliver/sliver_usecase_type.dart';

mixin SliverProviderDelegate {
  /// Return success state
  void onFetchSomeDataSuccess(dynamic data);

  /// Return failed state
  void onFetchSomeDataFailed(String message);
}

class SliverProvider with ChangeNotifier {
  SliverProvider({required this.sliverUseCase});

  /// Delegate
  late SliverProviderDelegate delegate;

  /// Sliver use case
  final SliverUseCaseType sliverUseCase;

  /// Brand model
  Tuple2<Brand, List<DishCategory>>? _brand;
  Tuple2<Brand, List<DishCategory>>? get brand {
    return _brand;
  }

  /// List of dishes model
  List<Dish> _dishes = [];
  List<Dish> get dishes {
    return _dishes;
  }

  /// Fetch some data
  ///
  Future<void> fetchSomeData() async {
    final response = await Future.wait([
      sliverUseCase.getBrand(id: 1),
      sliverUseCase.getRecommendDishes(id: 1),
    ]);
    // Handle recommend dishes response
    response[1].fold((error) {
      log('=============== $error');
      delegate.onFetchSomeDataFailed(error.message);
    }, (response) {
      response as List<Dish>;
      _dishes = response;
      delegate.onFetchSomeDataSuccess(response);
      notifyListeners();
    });
    // Handle brand response
    response[0].fold((error) {
      log('=============== $error');
      delegate.onFetchSomeDataFailed(error.message);
    }, (response) {
      response as Tuple2<Brand, List<DishCategory>>;
      _brand = response;
      delegate.onFetchSomeDataSuccess(response);
      notifyListeners();
    });
  }
}
