import 'package:ecommerce/src/presentation/pages/home_page/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({
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
          child: Text(
            'Ofertas',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.04,
            ),
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.19,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Provider.of<HomeController>(context, listen: false)
                            .showPrint(value: '$index offers');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          width: size.width * 0.73,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://pic.pnnet.dev/300x143',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
