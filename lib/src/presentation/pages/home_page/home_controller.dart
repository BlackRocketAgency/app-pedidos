import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;

  HomeController({required this.repositoryInterface});

  void showPrint({required dynamic value}) {
    print('Print service from $value');
  }
}
