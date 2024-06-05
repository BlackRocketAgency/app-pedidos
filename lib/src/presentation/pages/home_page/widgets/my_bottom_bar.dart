import 'package:ecommerce/src/domain/enums/enums_bottom_bar/enums_bottom_bar.dart';
import 'package:ecommerce/src/presentation/pages/home_page/widgets/my_button_bar.dart';
import 'package:ecommerce/src/presentation/pages/views_page/views_controller.dart';
import 'package:ecommerce/src/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key, required this.position});

  final EnumsBottomBar? position;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: BottomAppBar(
        height: size.height * 0.08,
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButtonBar(
              text: 'Inicio',
              icon: Icons.home_outlined,
              color:
                  EnumsBottomBar.home == position ? colorSelectBottomBar : null,
              onTap: () {
                Provider.of<ViewsController>(context, listen: false)
                    .changeViews(mySelectedMenu: EnumsBottomBar.home);
              },
            ),
            MyButtonBar(
              text: 'Favoritos',
              icon: Icons.favorite_border_outlined,
              color:
                  EnumsBottomBar.favs == position ? colorSelectBottomBar : null,
              onTap: () {
                Provider.of<ViewsController>(context, listen: false)
                    .changeViews(mySelectedMenu: EnumsBottomBar.favs);
              },
            ),
            const SizedBox(
              width: 40,
            ),
            MyButtonBar(
              text: 'Compras',
              icon: Icons.shopping_bag_outlined,
              color:
                  EnumsBottomBar.buys == position ? colorSelectBottomBar : null,
              onTap: () {
                Provider.of<ViewsController>(context, listen: false)
                    .changeViews(mySelectedMenu: EnumsBottomBar.buys);
              },
            ),
            MyButtonBar(
              text: 'Cuenta',
              icon: Icons.manage_accounts_outlined,
              color: EnumsBottomBar.account == position
                  ? colorSelectBottomBar
                  : null,
              onTap: () {
                Provider.of<ViewsController>(context, listen: false)
                    .changeViews(mySelectedMenu: EnumsBottomBar.account);
              },
            ),
          ],
        ),
      ),
    );
  }
}
