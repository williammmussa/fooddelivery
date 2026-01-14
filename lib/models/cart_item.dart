import 'package:fooddelivery/models/food.dart';

class CartItem {
  final Food food;
  List<Addon> selectedAddons = [];
  int quantity;

  CartItem({
    required this.food,
    this.quantity = 1,
    required this.selectedAddons,
  });

  double get totalPrice {
    double addonsPrice = selectedAddons.fold(0.0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }

  


}
