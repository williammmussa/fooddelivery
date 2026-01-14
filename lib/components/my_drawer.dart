import 'package:flutter/material.dart';
import 'package:fooddelivery/auth/login_or_register.dart';
import 'package:fooddelivery/components/my_drawer_tile.dart';
import 'package:fooddelivery/pages/settings_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children:[
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80, 
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          //home list title
          MyDrawerTile(
            icon: Icons.home_rounded,
            text: 'Home',
            onTap: () {
              //navigate to home page
              Navigator.pop(context); //close the drawer
            },
          ),
          //settings list title
          MyDrawerTile(
            icon: Icons.settings_rounded,
            text: 'Settings',
            onTap: () {
              //navigate to settings page
              Navigator.pop(context); //close the drawer
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder:(context) => SettingsPage(),
                ));
            },
          ),
          const Spacer(),
          //logout list title
          MyDrawerTile(
            icon: Icons.logout_rounded,
            text: 'Logout',
            onTap: () {
              //implement logout functionality
              Navigator.pop(context); //close the drawer
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder:(context) => LoginOrRegister(),
                ));
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}