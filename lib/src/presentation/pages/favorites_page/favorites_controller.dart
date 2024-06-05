import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class FavoritesController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;

  FavoritesController({required this.repositoryInterface});
}
