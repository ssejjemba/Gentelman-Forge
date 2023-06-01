class CartProduct {
  final String coverImage, name;
  final double price;
  final int quantity;

  CartProduct({
    required this.coverImage,
    required this.name,
    required this.price,
    this.quantity = 1,
  });
}

List<CartProduct> cartProducts = [
  CartProduct(
    name: 'Henley Shirts',
    price: 250,
    coverImage: 'https://i.imgur.com/PFBRThN.png',
    quantity: 1,
  ),
  CartProduct(
    name: 'Casual Shirts',
    price: 145,
    coverImage: 'https://i.imgur.com/fDwKPuo.png',
    quantity: 3,
  ),
  CartProduct(
    name: 'Casual Nolin',
    price: 225,
    coverImage: 'https://i.imgur.com/1phVInw.png',
    quantity: 1,
  ),
  CartProduct(
    name: 'Casual Nolin',
    price: 225,
    coverImage: 'https://i.imgur.com/y8oqJX3.png',
    quantity: 1,
  ),
];
