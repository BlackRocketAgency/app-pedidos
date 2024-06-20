import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: size.height * 0.15,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.network(
                        'https://pic.pnnet.dev/150x120',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Nombre producto $index',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.038,
                            // color: Colors.white,
                          ),
                        ),
                        Text(
                          '1 kg',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.036,
                          ),
                        ),
                        Text(
                          '\$125.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.036,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            // Text('ELIMINAR DE FAVORITOS')

                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Eliminar de favoritos',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: size.width * 0.036,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
