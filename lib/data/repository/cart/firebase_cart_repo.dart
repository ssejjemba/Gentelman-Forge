import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gentelman_forge/data/models/cart_item_model.dart';
import 'package:gentelman_forge/data/repository/cart/cart_repository.dart';

/// cart is collection in each user
class FirebaseCartRepository implements CartRepository {
  var userCollection = FirebaseFirestore.instance.collection("users");

  /// Get all cart items
  @override
  Stream<List<CartItemModel>> fetchCart(String uid) {
    return userCollection
        .doc(uid)
        .collection("cart")
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) {
              var data = doc.data();
              return CartItemModel.fromMap(data);
            }).toList());
  }

  /// Add item
  /// Created by NDH
  @override
  Future<void> addCartItemModel(String uid, CartItemModel newItem) async {
    var userRef = userCollection.doc(uid);
    await userRef.collection("cart").doc(newItem.id).get().then((doc) async {
      if (doc.exists) {
        // old data + new data
        var quantity = doc.data()!["quantity"] + newItem.quantity;
        var price = doc.data()!["price"] + newItem.price;
        // update
        await doc.reference.update({"quantity": quantity, "price": price});
      } else {
        // add new
        await doc.reference.set(newItem.toMap());
        print("success");
      }
    }).catchError((error) {
      print(error);
    });
  }

  /// Remove item
  /// Created by NDH
  @override
  Future<void> removeCartItemModel(String uid, CartItemModel cartItem) async {
    await userCollection
        .doc(uid)
        .collection("cart")
        .doc(cartItem.id)
        .delete()
        .catchError((error) => print(error));
  }

  /// Clear cart
  /// Created by NDH
  @override
  Future<void> clearCart(String uid) async {
    await userCollection
        .doc(uid)
        .collection("cart")
        .get()
        .then((snapshot) async {
      for (DocumentSnapshot doc in snapshot.docs) {
        await doc.reference.delete();
      }
    }).catchError((error) {});
  }

  /// Update quantity of cart item
  /// Created by NDH
  @override
  Future<void> updateCartItemModel(String uid, CartItemModel cartItem) async {
    var userRef = userCollection.doc(uid);
    await userRef.collection("cart").doc(cartItem.id).get().then((doc) async {
      if (doc.exists) {
        // update
        await doc.reference.update(cartItem.toMap());
      }
    }).catchError((error) {
      print(error);
    });
  }

  ///Singleton factory
  static final FirebaseCartRepository _instance =
      FirebaseCartRepository._internal();

  factory FirebaseCartRepository() {
    return _instance;
  }

  FirebaseCartRepository._internal();
}
