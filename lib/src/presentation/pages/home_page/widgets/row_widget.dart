import 'package:ecommerce/src/presentation/pages/single_product_page/single_product_page.dart';
import 'package:ecommerce/src/presentation/routes/routes.dart';
import 'package:ecommerce/src/presentation/theme/colors.dart';
import 'package:ecommerce/src/utils/navigate.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'prod by cat',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * 0.04,
                ),
              ),
              const Spacer(),
              Text(
                'Ver todos',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.04,
                    color: colorHyperLink),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.30, // size.height * 0.3,
          width: size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              //! AQUI -va ALGO
              return GestureDetector(
                onTap: () {
                  print('object $index');
                  navigateTo(
                    context: context,
                    page: const SingleProductPage(),
                    offset: 2.0,
                    pageName: singleProductPage,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 2.0,
                    right: 2.0,
                    top: 2.0,
                    bottom: 24,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.pinkAccent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://pic.pnnet.dev/250x350',
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.7),
                                    offset: const Offset(0, 5),
                                    blurRadius: 10,
                                    spreadRadius: 0.5,
                                  ),
                                ],
                                /*gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.black,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),*/
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nombre producto',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.038,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '1 kg',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.036,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '\$125.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.036,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          /*const Positioned(
                            bottom: 5,
                            right: 5,
                            child: CircleAvatar(
                              child: Icon(Icons.add),
                              radius: 12,
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
