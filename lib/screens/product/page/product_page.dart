import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gentelman_forge/screens/product/widget/product_content.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    Key? key,
    this.isFavourite = false,
    required this.coverImage,
  }) : super(key: key);

  final bool isFavourite;
  final String coverImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              isFavourite ? IconlyBold.heart : IconlyLight.heart,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: ProductContent(coverImage: coverImage, isFavourite: isFavourite),
      ),
    );
  }
}
