import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurant_app/controllers/db/online/dio.dart';
import 'package:restaurant_app/models/categories_model.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());

  static CategoriesCubit get(context) => BlocProvider.of(context);

  List<CategoriesModel> categories = [];

   void getProducts() async {
    emit(LoadingGetCategoriesState());
    try {
      var response =
          await DioHelper.dio.get("http://ah.khaledfathi.com/api/restaurant-category");
      if (response.statusCode == 200) {
        for (var element in response.data) {
          categories.add(CategoriesModel.fromJson(element));
        }
        emit(SuccessGetCategoriesState());
      } else {
        emit(ErrorGetCategoriesState());
      }
    } catch (e) {
      print(e.toString());
      emit(ErrorGetCategoriesState());
    }
  }

}
