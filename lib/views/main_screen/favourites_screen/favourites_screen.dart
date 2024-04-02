import 'package:flutter/material.dart';
import 'package:restaurant_app/views/main_screen/favourites_screen/components/favourites_listView.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});
  static const route = "favouriteScreen";
  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
      body: Container(
        width: 400,
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
        child: FavouritesListView(),
          
      ),
    );
  }
}
