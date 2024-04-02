import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurant_app/controllers/db/online/dio.dart';
import 'package:restaurant_app/models/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  static ProductsCubit get(context) => BlocProvider.of(context);

  List<ProductModel> products = [];

  void getProducts() async {
    emit(LoadingGetProductsState());
    try {
      var response =
          await DioHelper.dio.get("http://ah.khaledfathi.com/api/product");
      if (response.statusCode == 200) {
        for (var element in response.data) {
          products.add(ProductModel.fromJson(element));
        }
        emit(SuccessGetProductsState());
      } else {
        emit(ErrorGetProductsState());
      }
    } catch (e) {
      print(e.toString());
      emit(ErrorGetProductsState());
    }
  }
}
