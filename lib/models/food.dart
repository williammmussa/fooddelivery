class Food {
  final String name;          //burger
  final String description;   //a burger full of cheese and veggies
  final String imagePath;     //lib/assets/images/burger.png
  final double price;         //4.99
  final FoodCategory category; //burger
  List<Addon> availableAddons; //[cheese, bacon, extra sauce]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

// Food categories
enum FoodCategory {
  burgers,
  sides,
  desserts,
  drinks,
  salads,
}

//Addons for food items
class Addon {
  final String name;
  final double price;   
  Addon({required this.name, required this.price});
}