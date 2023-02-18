import 'dish.dart';

class Brand {
  const Brand({
    required this.id,
    required this.name,
    required this.logo,
    required this.image,
    required this.tags,
    required this.distance,
    required this.duration,
    required this.kitchenBrandId,
    required this.dishes,
  });

  final int? id;
  final String? name;
  final String? logo;
  final String? image;
  final List<String>? tags;
  final String? distance;
  final String? duration;
  final int? kitchenBrandId;
  final List<Dish>? dishes;
}