import 'package:flutter/material.dart';

class FavouritesListView extends StatelessWidget {
  const FavouritesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Favourites",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 400,
            height: 710,
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://img.freepik.com/free-photo/people-making-hands-heart-shape-silhouette-sunset_53876-15987.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705968000&semt=sph",
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Category",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text("Name", style: TextStyle(fontSize: 16)),
                                Text("Price \$\$",
                                    style: TextStyle(fontSize: 16)),
                                Text("data", style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.close,
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.red,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.shopping_bag_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
