import 'package:gentelman_forge/data/repository/cart/firebase_cart_repo.dart';
import 'package:gentelman_forge/data/repository/product/firebase_product_repo.dart';
import 'package:gentelman_forge/data/repository/storage/storage_repository.dart';

class AppRepository {
  /// Repository
  static final productRepository = FirebaseProductRepository();
  static final cartRepository = FirebaseCartRepository();
  static final storageRepository = StorageRepository();

  /// Singleton factory
  static final AppRepository _instance = AppRepository._internal();

  factory AppRepository() {
    return _instance;
  }
  AppRepository._internal();
}
