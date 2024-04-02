import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/controllers/categories/categories_cubit.dart';
import 'package:restaurant_app/models/categories_model.dart';
import 'package:restaurant_app/views/catalog_screen/catalog_screen.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    CategoriesCubit.get(context).getProducts();

    return BlocConsumer<CategoriesCubit, CategoriesState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is ErrorGetCategoriesState) {
          return Center(
            child: Text("Error"),
          );
        } else if (state is SuccessGetCategoriesState) {
          return ListView.builder(
            itemCount: CategoriesCubit.get(context).categories.length,
            itemBuilder: (BuildContext context, int index) {
              final categoryItem =
                  CategoriesCubit.get(context).categories[index];
              return GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => CatalogScreen('${categoryItem.image!}')));
                  Navigator.pushNamed(context,CatalogScreen.route,arguments: CategoriesModel(image:categoryItem.image! ,name: categoryItem.name!),);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  width: 400,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 130,
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          categoryItem.name!,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          categoryItem.image!,
                          width: 170,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
