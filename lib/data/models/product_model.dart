/// Product model
class Product {
  /// Product id
  final String id;

  /// CategoryModel id
  final String categoryId;

  /// Product name
  final String name;

  /// Product description
  final String description;

  /// Product image
  final String imageLink;

  /// Original price and percent-off sale
  final int price;

  /// Constructor
  Product(
      {required this.id,
      required this.imageLink,
      required this.categoryId,
      required this.name,
      required this.description,
      required this.price});

  /// Json data from server turns into model data
  static Product fromMap(String id, Map<String, dynamic> data) {
    return Product(
        id: data["id"] ?? "",
        name: data["name"] ?? "",
        description: data["description"] ?? "",
        imageLink: data["imageLink"] ?? [],
        categoryId: data["categoryId"] ?? "",
        price: data["price"] ?? 0);
  }

  /// Clone and update a product
  Product cloneWith({
    id,
    name,
    description,
    imageLink,
    categoryId,
    price,
  }) {
    return Product(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        imageLink: imageLink ?? this.imageLink,
        categoryId: categoryId ?? this.categoryId,
        price: price ?? this.price);
  }
}
