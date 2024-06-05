import 'package:flutter/material.dart';

import 'package:ecommerce/src/data/repository/repository_impl.dart';
import 'package:ecommerce/src/presentation/pages/account_page/account_controller.dart';
import 'package:ecommerce/src/presentation/pages/buys_page/buys_controller.dart';
import 'package:ecommerce/src/presentation/pages/favorites_page/favorites_controller.dart';
import 'package:ecommerce/src/presentation/pages/home_page/home_controller.dart';
import 'package:ecommerce/src/presentation/pages/login_page/login_controller.dart';
import 'package:ecommerce/src/presentation/pages/shopping_page/shopping_controller.dart';
import 'package:ecommerce/src/presentation/pages/single_product_page/single_product_controller.dart';
import 'package:ecommerce/src/presentation/pages/splash_page/splash_controller.dart';
import 'package:ecommerce/src/presentation/pages/views_page/views_controller.dart';
import 'package:provider/provider.dart';

class ProvidersTree extends StatelessWidget {
  const ProvidersTree({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoritesController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => BuysController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => AccountController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => ShoppingController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => ViewsController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => SingleProductController(
            repositoryInterface: RepositoryImpl(),
          ),
        ),
      ],
      child: child,
    );
  }
}
