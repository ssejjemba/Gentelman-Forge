import 'package:flutter/material.dart';
import 'package:gentelman_forge/screens/common_widgets/color_picker.dart';
import 'package:gentelman_forge/screens/common_widgets/network_image.dart';

class ProductContent extends StatelessWidget {
  const ProductContent({
    Key? key,
    this.isFavourite = false,
    required this.coverImage,
  }) : super(key: key);

  final bool isFavourite;
  final String coverImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(imageLink: coverImage),
        const ProductDescription(),
      ],
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.00),
          topRight: Radius.circular(16.00),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          // Title And Pricing
          Padding(
            padding: const EdgeInsets.all(16.00),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Casual Henley Shirts',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '\$175',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          // Description
          Padding(
            padding: const EdgeInsets.all(16.00),
            child: Text(
              "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2-5 buttons.",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          // Color Choosers
          const ColorPicker(),
          const Spacer(),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Add To Cart'),
            ),
          )
        ],
      ),
    ));
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.imageLink,
  }) : super(key: key);
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Hero(
          tag: imageLink,
          child: NetworkImageWithLoader(
            imageLink,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
