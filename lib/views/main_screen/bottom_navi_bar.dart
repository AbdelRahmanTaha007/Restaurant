import 'package:flutter/material.dart';
import 'package:restaurant_app/views/login/login_screen.dart';
import 'package:restaurant_app/views/main_screen/cart_screen/cart_screen.dart';
import 'package:restaurant_app/views/main_screen/categories_screen/categories_screen.dart';
import 'package:restaurant_app/views/main_screen/favourites_screen/favourites_screen.dart';
import 'package:restaurant_app/views/main_screen/home_screen/main_screen.dart';
import 'package:restaurant_app/views/main_screen/profile_screen/profile_screen.dart';
import 'package:restaurant_app/views/signup/signup_screen.dart';

class BottomNaviBarScreen extends StatefulWidget {
  const BottomNaviBarScreen({super.key});
  static const String route = "bottomNavigationBar";

  @override
  State<BottomNaviBarScreen> createState() => _BottomNaviBarScreenState();
}

class _BottomNaviBarScreenState extends State<BottomNaviBarScreen> {
  @override
  List<Widget> screens = [
    const MainScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const FavouritesScreen(),
    const ProfileScreen(),
  ];
  int selectedIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              selectedIndex = val;
              print(val);
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Shop"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: "Bag"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favourites"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Profile"),
          ]),
      body: screens[selectedIndex],
    );
  }
}
