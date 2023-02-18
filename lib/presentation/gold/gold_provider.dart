import 'package:flutter/foundation.dart';
import 'package:quiche_vpn/domain/model/dish.dart';

class GoldProvider extends ChangeNotifier {
  /// List of dishes
  List<Dish> _dishes = [];
  List<Dish> get dishes {
    return _dishes;
  }

  /// Have fun w/ dishes
  Future<void> setupData(List<Dish> data) async {
    Future.delayed(const Duration(seconds: 1), () async {
      _dishes = List<Dish>.from(data).reversed.toList();
      return dishes;
    }).then((_) => {
      notifyListeners()
    });
  }
}
