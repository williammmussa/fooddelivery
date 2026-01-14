import 'package:fooddelivery/models/food.dart';

class Restaurant {
  final List<Food> _menu = [
      // ------------------ BURGERS ------------------
  Food(
    name: 'Classic Cheeseburger',
    description: 'Juicy beef patty topped with cheddar cheese, lettuce, tomato, and pickles.',
    imagePath: 'lib/assets/images/burger_classic.png',
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
    description: 'Two flame-grilled beef patties with melted cheese and smoky house sauce.',
    imagePath: 'lib/assets/images/burger_double.png',
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
    description: 'Beef patty brushed with BBQ sauce, crispy bacon, and cheddar cheese.',
    imagePath: 'lib/assets/images/burger_bbq.png',
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
    imagePath: 'lib/assets/images/burger_chicken.png',
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
    description: 'Plant-based patty served with vegan cheese and fresh greens.',
    imagePath: 'lib/assets/images/burger_veggie.png',
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
    imagePath: 'lib/assets/images/chicken_wings.png',
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
    imagePath: 'lib/assets/images/fries.png',
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
    imagePath: 'lib/assets/images/mozzarella_sticks.png',
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
    imagePath: 'lib/assets/images/garlic_bread.png',
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
    imagePath: 'lib/assets/images/onion_rings.png',
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
    description: 'Romaine lettuce tossed with Caesar dressing, parmesan and croutons.',
    imagePath: 'lib/assets/images/salad_caesar.png',
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
    imagePath: 'lib/assets/images/salad_greek.png',
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
    imagePath: 'lib/assets/images/salad_garden.png',
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
    description: 'Grilled chicken with avocado, cherry tomatoes and mixed greens.',
    imagePath: 'lib/assets/images/salad_chicken_avocado.png',
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
    imagePath: 'lib/assets/images/salad_tuna.png',
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
    imagePath: 'lib/assets/images/cake_chocolate.png',
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
    imagePath: 'lib/assets/images/ice_cream_vanilla.png',
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
    imagePath: 'lib/assets/images/apple_pie.png',
    price: 3.99,
    category: FoodCategory.desserts,
    availableAddons: [
      Addon(name: 'Vanilla Ice Cream', price: 1.50),
      Addon(name: 'Caramel Sauce', price: 0.75),
      Addon(name: 'Whipped Cream', price: 1.00),
    ],
  ),

  Food(
    name: 'Cheesecake',
    description: 'Smooth and creamy cheesecake with graham crust.',
    imagePath: 'lib/assets/images/cheesecake.png',
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
    imagePath: 'lib/assets/images/brownie.png',
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
    imagePath: 'lib/assets/images/drink_cola.png',
    price: 1.99,
    category: FoodCategory.drinks,
    availableAddons: [],
  ),

  Food(
    name: 'Fresh Orange Juice',
    description: 'Cold pressed orange juice, no added sugar.',
    imagePath: 'lib/assets/images/drink_orange.png',
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
    imagePath: 'lib/assets/images/drink_iced_coffee.png',
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
    imagePath: 'lib/assets/images/drink_milkshake.png',
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
    imagePath: 'lib/assets/images/drink_water.png',
    price: 1.49,
    category: FoodCategory.drinks,
    availableAddons: [],
  ),


  ];
}