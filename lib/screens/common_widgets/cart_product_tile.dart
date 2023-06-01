import 'package:flutter/material.dart';
import 'package:gentelman_forge/screens/common_widgets/icon_with_background.dart';
import 'package:gentelman_forge/screens/common_widgets/network_image.dart';

class CartProductTile extends StatelessWidget {
  const CartProductTile({
    Key? key,
    required this.name,
    required this.coverImage,
    required this.price,
    required this.quantity,
    this.increaseQuantity,
    this.decreaseQuantity,
  }) : super(key: key);

  final String name;
  final String coverImage;
  final double price;
  final int quantity;
  final void Function()? increaseQuantity;
  final void Function()? decreaseQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16.00,
        vertical: 16.00 / 2,
      ),
      padding: const EdgeInsets.all(16.00),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 80,
              width: 80,
              child: NetworkImageWithLoader(
                coverImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: 5),
                  Text('\$${price.toInt()}',
                      style: Theme.of(context).textTheme.bodyLarge)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: IconWithBackground(
                    iconData: Icons.add,
                    size: 16,
                    onTap: increaseQuantity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Text('$quantity'),
                ),
                Expanded(
                  child: IconWithBackground(
                    iconData: Icons.remove,
                    size: 16,
                    onTap: decreaseQuantity,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
