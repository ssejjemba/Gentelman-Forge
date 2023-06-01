class Product {
  final String imageLink, title;
  final double price;
  final bool hasFavourite, isFavourite;

  Product({
    required this.imageLink,
    required this.title,
    required this.price,
    this.hasFavourite = false,
    this.isFavourite = false,
  });
}
