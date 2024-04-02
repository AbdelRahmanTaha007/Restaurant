part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

class LoadingGetProductsState extends ProductsState{}

class SuccessGetProductsState extends ProductsState{}

class ErrorGetProductsState extends ProductsState{}