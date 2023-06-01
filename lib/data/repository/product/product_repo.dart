import 'package:gentelman_forge/data/models/category_model.dart';
import 'package:gentelman_forge/data/models/product_model.dart';

abstract class ProductRepository {
  /// Get all products
  /// Created by NDH
  Future<List<Product>> fetchProducts();

  /// Get popular products
  /// Created by NDH
  Future<List<Product>> fetchPopularProducts();

  /// Get new arrival products
  /// Created by NDH
  Future<List<Product>> fetchNewArrivalProducts();

  /// Get products by category
  /// [categoryId] is id of category
  /// Created by NDH
  Future<List<Product>> fetchProductsByCategory(String? categoryId);

  /// Get product by Id
  /// [pid] is product id
  /// Created by NDH
  Future<Product> getProductById(String pid);

  /// Get all categories
  /// Created by NDH
  Future<List<CategoryModel>> getCategories();

  /// Get category by id
  /// Created by NDH
  Future<CategoryModel> getCategoryById(String caregoryId);
}
