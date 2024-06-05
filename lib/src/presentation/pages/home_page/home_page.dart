import 'package:ecommerce/src/domain/constants/constants.dart';
import 'package:ecommerce/src/presentation/pages/home_page/widgets/categories_widget.dart';
import 'package:ecommerce/src/presentation/pages/home_page/widgets/my_search_bar.dart';
import 'package:ecommerce/src/presentation/pages/home_page/widgets/offers_widget.dart';
import 'package:ecommerce/src/presentation/pages/home_page/widgets/row_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        appName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
                const MySearchBar(),
                const OffersWidget(),
                const CategoriesWidget(),
                const RowWidget(),
                const RowWidget(),
                const RowWidget(),
                const RowWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
