import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_quantity_selector.dart';
import 'package:fooddelivery/models/cart_item.dart';
import 'package:fooddelivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder:
          (context, restaurant, child) => Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(8)
            ),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      //food image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          cartItem.food.imagePath,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      //name and price
                      Column(
                        children: [
                          Text(cartItem.food.name),
                          Text('\$${cartItem.food.price}'),
                        ],
                      ),
                      const Spacer(),
                      //increment or decrement the quantity
                      QuantitySelector(
                        food: cartItem.food,
                        quantity: cartItem.quantity,
                        onDecrement: (){
                          restaurant.removeFromCart(cartItem);
                        },
                        onIncrement: (){
                          restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
