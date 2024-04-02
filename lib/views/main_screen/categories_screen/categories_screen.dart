import 'package:flutter/material.dart';
import 'package:restaurant_app/views/main_screen/categories_screen/components/categories_listview.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  static const String route = "categories";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Categories"),
          ),
          leading: Icon(Icons.arrow_back),
          actions: [Icon(Icons.search)],
        ),
        body: CategoriesListView());
  }
}
