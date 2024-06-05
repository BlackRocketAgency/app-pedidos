import 'package:ecommerce/src/presentation/pages/account_page/account_page.dart';
import 'package:ecommerce/src/presentation/pages/buys_page/buys_page.dart';
import 'package:ecommerce/src/presentation/pages/favorites_page/favorites_page.dart';
import 'package:ecommerce/src/presentation/pages/home_page/home_page.dart';
import 'package:ecommerce/src/presentation/pages/login_page/login_page.dart';
import 'package:ecommerce/src/presentation/pages/shopping_page/shopping_page.dart';
import 'package:ecommerce/src/presentation/pages/single_product_page/single_product_page.dart';
import 'package:ecommerce/src/presentation/pages/splash_page/splash_page.dart';
import 'package:ecommerce/src/presentation/pages/views_page/views_page.dart';
import 'package:flutter/material.dart';

const splashPage = '/splashPage';
const loginPage = '/loginPage';
const homePage = '/homePage';
const favsPage = '/favsPage';
const shoppingPage = '/shoppingPage';
const buysPage = '/buysPage';
const accountPage = '/accountPage';
const viewsPage = '/viewsPage';
const singleProductPage = '/singleProductPage';

Map<String, WidgetBuilder> myRoutes() {
  return <String, WidgetBuilder>{
    splashPage: (context) => const SplashPage(),
    loginPage: (context) => const LoginPage(),
    homePage: (context) => const HomePage(),
    favsPage: (context) => const FavoritesPage(),
    shoppingPage: (context) => const ShoppingPage(),
    buysPage: (context) => const BuysPage(),
    accountPage: (context) => const AccountPage(),
    viewsPage: (context) => const ViewsPage(),
    singleProductPage: (context) => const SingleProductPage(),
  };
}
