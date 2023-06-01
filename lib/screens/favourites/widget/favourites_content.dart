import 'package:flutter/material.dart';
import 'package:gentelman_forge/data/product_data.dart';
import 'package:gentelman_forge/screens/common_widgets/product_card.dart';
import 'package:gentelman_forge/screens/product/page/product_page.dart';

class FavouriteContent extends StatelessWidget {
  final List<Product> favouriteProductsList;

  const FavouriteContent({Key? key, required this.favouriteProductsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: const SizedBox(),
          title: const Text('Favourites'),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: favouriteProductsList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 290,
            ),
            itemBuilder: (context, index) {
              Product item = favouriteProductsList[index];
              return ProductTileSquare(
                title: item.title,
                price: item.price,
                imageLink: item.imageLink,
                hasFavourite: item.hasFavourite,
                isFavourite: item.isFavourite,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductPage(
                            coverImage: item.imageLink,
                          )));
                },
              );
            },
          ),
        )
      ],
    );
  }
}
