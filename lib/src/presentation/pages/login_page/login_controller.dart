import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;

  LoginController({required this.repositoryInterface});
}
