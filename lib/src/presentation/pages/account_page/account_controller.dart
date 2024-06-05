import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class AccountController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;
  AccountController({required this.repositoryInterface});
}
