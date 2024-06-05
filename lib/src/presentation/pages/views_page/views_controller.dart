import 'package:ecommerce/src/domain/enums/enums_bottom_bar/enums_bottom_bar.dart';
import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:ecommerce/src/presentation/pages/account_page/account_page.dart';
import 'package:ecommerce/src/presentation/pages/buys_page/buys_page.dart';
import 'package:ecommerce/src/presentation/pages/favorites_page/favorites_page.dart';
import 'package:ecommerce/src/presentation/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class ViewsController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;

  ViewsController({required this.repositoryInterface});

  EnumsBottomBar _selectedMenu = EnumsBottomBar.home;
  EnumsBottomBar? get selectedMenu => _selectedMenu;

  void changeViews({required EnumsBottomBar mySelectedMenu}) {
    _selectedMenu = mySelectedMenu;
    notifyListeners();
  }

  Widget selectedView({required EnumsBottomBar? view}) {
    switch (view) {
      case EnumsBottomBar.home:
        return const HomePage();
      case EnumsBottomBar.favs:
        return const FavoritesPage();
      case EnumsBottomBar.buys:
        return const BuysPage();
      case EnumsBottomBar.account:
        return const AccountPage();
      default:
        return const HomePage();
    }
  }
}
