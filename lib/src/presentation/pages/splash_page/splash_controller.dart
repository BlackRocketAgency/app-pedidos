import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;

  SplashController({required this.repositoryInterface});
}
