import 'package:ecommerce/src/data/local/preferences/local_preferences.dart';
import 'package:ecommerce/src/domain/constants/constants.dart';
import 'package:ecommerce/src/presentation/routes/routes.dart';
import 'package:ecommerce/src/provider_tree/provider_tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalPreferences.initPreferences();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyScrollBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return GlowingOverscrollIndicator(
      axisDirection: axisDirection,
      color: Colors.red, // Cambiar a cualquier color que desees
      child: child,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProvidersTree(
      child: MaterialApp(
        builder: (context, child) {
          return ScrollConfiguration(
              behavior: MyScrollBehavior(), child: child!);
        },
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
        ),
        initialRoute: splashPage,
        routes: myRoutes(),
      ),
    );
  }
}
