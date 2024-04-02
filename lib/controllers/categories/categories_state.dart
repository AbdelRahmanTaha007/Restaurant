part of 'categories_cubit.dart';

@immutable
sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {}


class LoadingGetCategoriesState extends CategoriesState{}

class SuccessGetCategoriesState extends CategoriesState{}

class ErrorGetCategoriesState extends CategoriesState{}
