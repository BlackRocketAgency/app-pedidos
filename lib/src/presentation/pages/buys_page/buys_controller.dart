import 'package:ecommerce/src/domain/repository/repository_interface.dart';
import 'package:flutter/material.dart';

class BuysController extends ChangeNotifier {
  late RepositoryInterface repositoryInterface;
  BuysController({required this.repositoryInterface});
}
