import 'package:ecommerce/src/domain/enums/status_enum/status_enum.dart';
import 'package:flutter/material.dart';

class SnackBarConfig {
  Color backgroundColor;
  IconData icon;
  Function()? function;

  SnackBarConfig({
    required this.backgroundColor,
    required this.icon,
    this.function,
  });
}

SnackBarConfig configSnack(
    {required StatusEnum statusEnum, Function()? function}) {
  switch (statusEnum) {
    case StatusEnum.successResponse:
      return SnackBarConfig(
          backgroundColor: Colors.green, icon: Icons.check, function: function);
    case StatusEnum.errorResponse:
      return SnackBarConfig(
          backgroundColor: Colors.red, icon: Icons.error, function: function);
    case StatusEnum.unknowResponse:
      return SnackBarConfig(
          backgroundColor: Colors.yellow[800]!,
          icon: Icons.info_outline_rounded,
          function: function);
    default:
      return SnackBarConfig(
        backgroundColor: Colors.blue,
        icon: Icons.check,
        function: function,
      );
  }
}
