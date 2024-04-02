import 'package:flutter/material.dart';
import 'package:restaurant_app/models/categories_model.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);
  static const route = "catalogScreen";
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CategoriesModel;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Title"),
        ),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.search)],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 10,
            mainAxisExtent: 305,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    args.image!,
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                              right: 10,
                              bottom: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                ),
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 25,
                                ),
                              )),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              args.name!,
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Prod-Name",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$Prod-price",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ]));
          }),
    );
  }
}
