class Dish {
  const Dish({
    required this.id,
    required this.kitchenBrandId,
    required this.category,
    required this.name,
    required this.image,
    required this.description,
    required this.brandId,
    required this.price,
    required this.available,
  });

  final int? id;
  final int? kitchenBrandId;
  final String? category;
  final String? name;
  final String? image;
  final String? description;
  final int? brandId;
  final String? price;
  final bool? available;
}

class DishCategory {
  const DishCategory({
    required this.id,
    required this.name,
    required this.dishes,
    required this.isSelected
  });

  final int? id;
  final String? name;
  final List<Dish>? dishes;
  final bool isSelected;

  DishCategory copyWith({
    int? id,
    String? name,
    List<Dish>? dishes,
    bool? isSelected
  }) {
    return DishCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        dishes: dishes ?? this.dishes,
        isSelected: isSelected ?? this.isSelected
    );
  }
}