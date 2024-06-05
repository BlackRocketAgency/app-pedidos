import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class SingleProductController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;
  SingleProductController({required this.repositoryInterface});
}
