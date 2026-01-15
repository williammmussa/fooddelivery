import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/models/cart_item.dart';
import 'package:fooddelivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // ------------------ BURGERS ------------------
    Food(
      name: 'Classic Cheese Burger',
      description:
          'Juicy beef patty topped with cheddar cheese, lettuce, tomato, and pickles.',
      imagePath: 'lib/assets/images/burgers/burger_classic.jpg',
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 1.00),
        Addon(name: 'Bacon', price: 1.50),
        Addon(name: 'Avocado', price: 2.00),
      ],
    ),

    Food(
      name: 'Double Beef Burger',
      description:
          'Two flame-grilled beef patties with melted cheese and smoky house sauce.',
      imagePath: 'lib/assets/images/burgers/burger_double.jpg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Patty', price: 3.00),
        Addon(name: 'Grilled Onions', price: 1.00),
        Addon(name: 'Jalapeños', price: 0.75),
      ],
    ),

    Food(
      name: 'BBQ Bacon Burger',
      description:
          'Beef patty brushed with BBQ sauce, crispy bacon, and cheddar cheese.',
      imagePath: 'lib/assets/images/burgers/burger_bbq.jpg',
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Bacon', price: 1.50),
        Addon(name: 'Onion Rings', price: 2.50),
        Addon(name: 'Cheddar Slice', price: 1.00),
      ],
    ),

    Food(
      name: 'Chicken Burger',
      description: 'Crispy chicken fillet with lettuce, mayo, and pickles.',
      imagePath: 'lib/assets/images/burgers/burger_chicken.jpg',
      price: 6.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Spicy Mayo', price: 0.75),
        Addon(name: 'Cheese Slice', price: 1.00),
        Addon(name: 'Grilled Mushrooms', price: 1.25),
      ],
    ),

    Food(
      name: 'Veggie Burger',
      description:
          'Plant-based patty served with vegan cheese and fresh greens.',
      imagePath: 'lib/assets/images/burgers/burger_veggie.jpg',
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Vegan Cheese', price: 1.25),
        Addon(name: 'Avocado', price: 2.00),
        Addon(name: 'Pickles', price: 0.50),
      ],
    ),

    // ------------------ SIDES ------------------
    Food(
      name: 'Chicken Wings',
      description: 'Crispy wings tossed in your choice of sauce.',
      imagePath: 'lib/assets/images/sides/chicken_wings.jpg',
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'BBQ Sauce', price: 0.75),
        Addon(name: 'Hot Sauce', price: 0.75),
        Addon(name: 'Ranch Dip', price: 1.00),
      ],
    ),

    Food(
      name: 'French Fries',
      description: 'Golden fries seasoned with sea salt.',
      imagePath: 'lib/assets/images/sides/fries.jpg',
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 1.25),
        Addon(name: 'Ketchup', price: 0.50),
        Addon(name: 'Garlic Mayo', price: 0.75),
      ],
    ),

    Food(
      name: 'Mozzarella Sticks',
      description: 'Breaded mozzarella fried to perfection.',
      imagePath: 'lib/assets/images/sides/mozzarella_sticks.jpg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Marinara', price: 1.00),
        Addon(name: 'Ranch Dip', price: 1.00),
        Addon(name: 'BBQ Sauce', price: 0.75),
      ],
    ),

    Food(
      name: 'Garlic Bread',
      description: 'Toasted baguette brushed with garlic butter.',
      imagePath: 'lib/assets/images/sides/garlic_bread.jpg',
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Melt', price: 1.50),
        Addon(name: 'Marinara', price: 1.00),
        Addon(name: 'Parsley', price: 0.50),
      ],
    ),

    Food(
      name: 'Onion Rings',
      description: 'Crispy battered onion rings.',
      imagePath: 'lib/assets/images/sides/onion_rings.jpg',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Chipotle Dip', price: 1.00),
        Addon(name: 'Ranch Dip', price: 1.00),
        Addon(name: 'Spicy Mayo', price: 0.75),
      ],
    ),

    // ------------------ SALADS ------------------
    Food(
      name: 'Caesar Salad',
      description:
          'Romaine lettuce tossed with Caesar dressing, parmesan and croutons.',
      imagePath: 'lib/assets/images/salads/salad_caesar.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.50),
        Addon(name: 'Bacon Bits', price: 1.50),
        Addon(name: 'Extra Parmesan', price: 1.25),
      ],
    ),

    Food(
      name: 'Greek Salad',
      description: 'Crisp cucumbers, olives, tomato, onions and feta.',
      imagePath: 'lib/assets/images/salads/salad_greek.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Feta', price: 1.50),
        Addon(name: 'Olives', price: 1.00),
        Addon(name: 'Pita Bread', price: 1.25),
      ],
    ),

    Food(
      name: 'Garden Salad',
      description: 'Mixed greens with cucumbers, carrots and tomato.',
      imagePath: 'lib/assets/images/salads/salad_garden.jpg',
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 2.00),
        Addon(name: 'Croutons', price: 0.75),
        Addon(name: 'Cheddar Cheese', price: 1.00),
      ],
    ),

    Food(
      name: 'Chicken Avocado Salad',
      description:
          'Grilled chicken with avocado, cherry tomatoes and mixed greens.',
      imagePath: 'lib/assets/images/salads/salad_chicken_avocado.jpg',
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Avocado', price: 2.00),
        Addon(name: 'Blue Cheese', price: 1.50),
        Addon(name: 'Bacon Bits', price: 1.50),
      ],
    ),

    Food(
      name: 'Tuna Salad',
      description: 'Flaked tuna with mayo, celery and fresh greens.',
      imagePath: 'lib/assets/images/salads/salad_tuna.jpg',
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Boiled Egg', price: 1.25),
        Addon(name: 'Olives', price: 1.00),
        Addon(name: 'Croutons', price: 0.75),
      ],
    ),

    // ------------------ DESSERTS ------------------
    Food(
      name: 'Chocolate Cake',
      description: 'Moist chocolate cake with fudge icing.',
      imagePath: 'lib/assets/images/desserts/cake_chocolate.jpg',
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 1.50),
        Addon(name: 'Whipped Cream', price: 1.00),
        Addon(name: 'Chocolate Syrup', price: 0.75),
      ],
    ),

    Food(
      name: 'Vanilla Ice Cream',
      description: 'Classic vanilla ice cream scoop.',
      imagePath: 'lib/assets/images/desserts/ice_cream_vanilla.jpg',
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Sprinkles', price: 0.50),
        Addon(name: 'Chocolate Syrup', price: 0.75),
        Addon(name: 'Caramel Sauce', price: 0.75),
      ],
    ),

    Food(
      name: 'Apple Pie',
      description: 'Warm apple pie with cinnamon crust.',
      imagePath: 'lib/assets/images/desserts/apple_pie.jpg',
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 1.50),
        Addon(name: 'Caramel Sauce', price: 0.75),
        Addon(name: 'Whipped Cream', price: 1.00),
      ],
    ),

    Food(
      name: 'Cheese Cake',
      description: 'Smooth and creamy cheesecake with graham crust.',
      imagePath: 'lib/assets/images/desserts/cheesecake.jpg',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Strawberry Sauce', price: 1.00),
        Addon(name: 'Blueberry Sauce', price: 1.00),
        Addon(name: 'Whipped Cream', price: 1.00),
      ],
    ),

    Food(
      name: 'Brownie',
      description: 'Rich chocolate brownie served warm.',
      imagePath: 'lib/assets/images/desserts/brownie.jpg',
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Ice Cream', price: 1.50),
        Addon(name: 'Chocolate Drizzle', price: 0.75),
        Addon(name: 'Nut Topping', price: 1.00),
      ],
    ),

    // ------------------ DRINKS ------------------
    Food(
      name: 'Coca-Cola',
      description: 'Chilled carbonated soft drink.',
      imagePath: 'lib/assets/images/drinks/drink_cola.jpg',
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),

    Food(
      name: 'Fresh Orange Juice',
      description: 'Cold pressed orange juice, no added sugar.',
      imagePath: 'lib/assets/images/drinks/drink_orange.jpg',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Ice Cubes', price: 0.25),
        Addon(name: 'Lemon Slice', price: 0.50),
      ],
    ),

    Food(
      name: 'Iced Coffee',
      description: 'Brewed coffee served over ice.',
      imagePath: 'lib/assets/images/drinks/drink_iced_coffee.jpg',
      price: 3.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Milk', price: 0.50),
        Addon(name: 'Vanilla Syrup', price: 0.75),
        Addon(name: 'Caramel Syrup', price: 0.75),
      ],
    ),

    Food(
      name: 'Milkshake',
      description: 'Thick and creamy flavored milkshake.',
      imagePath: 'lib/assets/images/drinks/drink_milkshake.jpg',
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Whipped Cream', price: 1.00),
        Addon(name: 'Extra Scoop', price: 1.50),
        Addon(name: 'Sprinkles', price: 0.50),
      ],
    ),

    Food(
      name: 'Mineral Water',
      description: 'Pure still mineral water.',
      imagePath: 'lib/assets/images/drinks/drink_water.jpg',
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
  ];

  /*
  getters
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
  operations
  */
  // create a user cart
  final List<CartItem> _cart = [];
  // add item to the cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item with the same food and selectedAddons -- if so, increase quantity, else add new cart item
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check both food and selectedAddons for equality
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );
      return isSameFood && isSameAddons;
    });
    //if found, increase quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //else add new cart item
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }
  // remove item from the cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
  // get total price of items in the cart
    double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
  //get total number of items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }
  //clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /*
  helpers
  */

  //Generate the receipt for the order

  //format a double value into money

  //format list of addons into a string summary
}
