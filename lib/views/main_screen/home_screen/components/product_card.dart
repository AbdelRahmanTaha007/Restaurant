import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/controllers/products/products_cubit.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    ProductsCubit.get(context).getProducts();

    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is ErrorGetProductsState) {
          return Center(
            child: Text("Error"),
          );
        } else if (state is SuccessGetProductsState) {
          return Container(
            margin: EdgeInsets.only(top: 15),
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ProductsCubit.get(context).products.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = ProductsCubit.get(context).products[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(item.image!),
                                        fit: BoxFit.fill)),
                                width: 150,
                                height: 200,
                              ),
                              Positioned(
                                  left: 10,
                                  top: 5,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.red,
                                      ),
                                      width: 55,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "${item.discount!} %",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))),
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
                            margin: EdgeInsets.only(left: 10, right: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.name!,
                                    style: TextStyle(
                                      fontSize: 15,
                                    )),
                                Text(
                                  item.productCategoryName!,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("\$ ${item.price!}",
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
