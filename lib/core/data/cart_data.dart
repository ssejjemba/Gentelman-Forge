import 'package:gentelman_forge/core/data/product_data.dart';

class CartItem {
  final ProductData product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class ShoppingCartData {
  List<CartItem> items = [];
}
