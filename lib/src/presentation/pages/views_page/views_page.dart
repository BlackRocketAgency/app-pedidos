import 'package:ecommerce/src/presentation/pages/home_page/widgets/my_bottom_bar.dart';
import 'package:ecommerce/src/presentation/pages/shopping_page/shopping_page.dart';
import 'package:ecommerce/src/presentation/pages/views_page/views_controller.dart';
import 'package:ecommerce/src/presentation/routes/routes.dart';
import 'package:ecommerce/src/utils/navigate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewsPage extends StatelessWidget {
  const ViewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Consumer<ViewsController>(
        builder: (_, controller, __) {
          return SafeArea(
            child: Scaffold(
              // backgroundColor: Colors.black,
              extendBody: true,
              body: controller.selectedView(view: controller.selectedMenu),
              bottomNavigationBar: MyBottomBar(
                position: controller.selectedMenu,
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.miniCenterDocked,
              floatingActionButton:
                  MediaQuery.of(context).viewInsets.bottom > 0.0
                      ? null
                      : FloatingActionButton(
                          onPressed: () {
                            navigateTo(
                              context: context,
                              page: const ShoppingPage(),
                              offset: 2.0,
                              pageName: shoppingPage,
                            );
                          },
                          mini: false,
                          child: const Icon(Icons.shopping_cart_outlined),
                        ),
            ),
          );
        },
      ),
    );
  }
}
