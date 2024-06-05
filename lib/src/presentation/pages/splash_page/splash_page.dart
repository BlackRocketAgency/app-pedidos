import 'package:ecommerce/src/presentation/pages/views_page/views_page.dart';
import 'package:ecommerce/src/presentation/routes/routes.dart';
import 'package:ecommerce/src/utils/navigate.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(
        const Duration(seconds: 1),
      );
      navigateToReplace(
        // ignore: use_build_context_synchronously
        context: context,
        page: const ViewsPage(),
        offset: 2.0,
        pageName: homePage,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FlutterLogo(
            textColor: Colors.green,
            size: size.height * 0.3,
          ),
        ),
      ),
    );
  }
}
