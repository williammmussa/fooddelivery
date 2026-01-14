import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_current_location.dart';
import 'package:fooddelivery/components/my_description_box.dart';
import 'package:fooddelivery/components/my_drawer.dart';
import 'package:fooddelivery/components/my_sliver_app_bar.dart';
import 'package:fooddelivery/components/my_tab_bar.dart';
import 'package:fooddelivery/models/food.dart';
import 'package:fooddelivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu
        .where((food) => food.category == category)
        .toList();
  }

  // return list of foods in a given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
     return FoodCategory.values.map((category) {
       List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu); 
       return ListView.builder(
         itemCount: categoryMenu.length,
         physics: NeverScrollableScrollPhysics(),
         itemBuilder: (context, index) {
           Food foodItem = categoryMenu[index];
           return ListTile(
             title: Text(
               foodItem.name,
               style: TextStyle(
                 color: Theme.of(context).colorScheme.inversePrimary,
               ),
             ),
             subtitle: Text(
               '\$${foodItem.price.toStringAsFixed(2)}',
               style: TextStyle(
                 color: Theme.of(context).colorScheme.inversePrimary,
               ),
             ),
           );
         },
       );
     } ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: MyTabBar(tabController: _tabController),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25.0,
                      endIndent: 25.0,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    //my current location
                    MyCurrentLocation(),
                    //a description box
                    MyDescriptionBox(),
                  ],
                ),
              ),
            ],
        body: Consumer<Restaurant>(builder : (context, restaurant, child) => 
          TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
