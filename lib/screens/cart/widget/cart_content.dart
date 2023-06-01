import 'package:flutter/material.dart';
import 'package:gentelman_forge/data/cart_data.dart';
import 'package:gentelman_forge/screens/common_widgets/cart_product_tile.dart';

class CartContent extends StatelessWidget {
  final List<CartProduct> cartItems;
  const CartContent({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Header
        AppBar(
          leading: const SizedBox(),
          title: const Text('My Cart'),
        ),

        /// Use List View Here
        Expanded(
          child: ListView(
            // shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: _buildCartItems(context),
          ),
        ),

        /// Total Item
        Padding(
          padding: const EdgeInsets.all(16.00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal  :',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                '\$740',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),

        /// Checkout Button

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => const CheckoutPage()));
            },
            child: const Text('Checkout'),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  List<Widget> _buildCartItems(BuildContext context) {
    return cartItems.map((e) {
      return CartProductTile(
          name: e.name,
          coverImage: e.coverImage,
          price: e.price,
          quantity: e.quantity);
    }).toList();
  }
}
