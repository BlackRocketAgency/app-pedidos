import 'package:flutter/material.dart';

/// Navegar y reemplazar ruta
void navigateToReplace({
  required BuildContext context,
  required Widget page,
  required double offset,
  required String pageName,
  // RouteSettings(name: '/screen2')
}) {
  print(pageName);
  Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            page,
        settings: RouteSettings(name: pageName),
        transitionDuration: const Duration(milliseconds: 350),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);

          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(offset, 0.0),
              end: Offset.zero,
            ).animate(curvedAnimation),
            child: child,
          );
        },
      ),
      (Route<dynamic> route) => false);
}

/// Navegar y mantener ruta
void navigateTo({
  required BuildContext context,
  required Widget page,
  required double offset,
  required String pageName,
}) {
  print(pageName);
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          page,
      settings: RouteSettings(name: pageName),
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(offset, 0.0),
            end: Offset.zero,
          ).animate(curvedAnimation),
          child: child,
        );
      },
    ),
  );
}
