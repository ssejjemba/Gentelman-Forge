class ProductData {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  ProductData({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  String toString() {
    return 'ProductData(id: $id, name: $name, price: $price, description: $description)';
  }
}
