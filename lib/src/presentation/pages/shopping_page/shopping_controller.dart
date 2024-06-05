import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class ShoppingController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;

  ShoppingController({required this.repositoryInterface});
}
