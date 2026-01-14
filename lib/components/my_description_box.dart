import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.bold,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontWeight: FontWeight.bold,
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8.0)
      ),
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [ 
          // Delivery fee
          Column(
            children: [
              Text(
                'Delivery Fee',
                style: myPrimaryTextStyle,
              ),
              Text(
                '\$2.00',
                style: mySecondaryTextStyle,
              ),
            ],
          ),
          //Delivery time
          Column(
            children: [
              Text(
                'Delivery Time',
                style: myPrimaryTextStyle,
              ),
              Text(
                '30-45 mins',
                style: mySecondaryTextStyle
              ),
            ],
          )
         ],
        ),
    );
  }
}