import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/controllers/categories/categories_cubit.dart';
import 'package:restaurant_app/controllers/db/online/dio.dart';
import 'package:restaurant_app/controllers/login_cubit/auth_cubit.dart';
import 'package:restaurant_app/controllers/products/products_cubit.dart';
import 'package:restaurant_app/controllers/signup_cubit/signup_cubit.dart';
import 'package:restaurant_app/views/catalog_screen/catalog_screen.dart';
import 'package:restaurant_app/views/login/login_screen.dart';
import 'package:restaurant_app/views/main_screen/bottom_navi_bar.dart';
import 'package:restaurant_app/views/main_screen/cart_screen/cart_screen.dart';
import 'package:restaurant_app/views/main_screen/categories_screen/categories_screen.dart';
import 'package:restaurant_app/views/main_screen/favourites_screen/favourites_screen.dart';
import 'package:restaurant_app/views/main_screen/home_screen/main_screen.dart';
import 'package:restaurant_app/views/main_screen/profile_screen/profile_screen.dart';
import 'package:restaurant_app/views/product_details/product_details.dart';
import 'package:restaurant_app/views/signup/signup_screen.dart';
import 'package:restaurant_app/views/success/success.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductsCubit()),
        BlocProvider(create: (context) => CategoriesCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => SignupCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFF9F9F9),
            appBarTheme: const AppBarTheme(color: Color(0xFFF9F9F9)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    foregroundColor: MaterialStatePropertyAll(Colors.white))),
            textTheme: TextTheme()),
        debugShowCheckedModeBanner: false,
        initialRoute: SuccessOrderScreen.route,
        routes: {
          LoginScreen.route: (context) => LoginScreen(),
          SignUpScreen.route: (context) => SignUpScreen(),
          MainScreen.route: (context) => MainScreen(),
          BottomNaviBarScreen.route: (context) => BottomNaviBarScreen(),
          CategoriesScreen.route: (context) => CategoriesScreen(),
          CatalogScreen.route: (context) => CatalogScreen(),
          FavouritesScreen.route: (context) => FavouritesScreen(),
          CartScreen.route: (context) => CartScreen(),
          ProfileScreen.route: (context) => ProfileScreen(),
          ProductDetailsScreen.route: (context) => ProductDetailsScreen(),
          SuccessOrderScreen.route: (context) => SuccessOrderScreen(),
        },
      ),
    );
  }
}
