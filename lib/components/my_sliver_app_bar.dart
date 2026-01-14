import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;
  const MySliverAppBar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {
            //handle notification press
          },
        ),
      ],
      title: Text("Mama Nyako\'s Diner"),
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(
         top: 0,
         left:0,
         right: 0
      ),
      expandedTitleScale: 1,
      ),
    );
  }
}