import 'package:flutter/material.dart';
import 'package:gentelman_forge/screens/common_widgets/product_card.dart';
import 'package:gentelman_forge/screens/home/page/product_page.dart';
import 'package:gentelman_forge/screens/home/widget/section_title.dart';

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionDividerTitle(
          title: 'New Arrival',
          onTap: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductTileSquare(
                title: 'Long Sleeve Shirts',
                imageLink: 'https://i.imgur.com/QVroKWd.png',
                price: 165,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductPage(
                            coverImage: 'https://i.imgur.com/QVroKWd.png',
                          )));
                },
              ),
              ProductTileSquare(
                title: 'Casual Henley Shirts',
                imageLink: 'https://i.imgur.com/PFBRThN.png',
                price: 275,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductPage(
                            coverImage: 'https://i.imgur.com/PFBRThN.png',
                          )));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
