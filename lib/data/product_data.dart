import 'package:flutter/material.dart';
import 'package:gentelman_forge/core/const/path_constants.dart';

class Product {
  final String image, title;
  final double price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    image: PathConstants.product1,
    title: "Long Sleeve Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: PathConstants.product2,
    title: "Casual Henley Shirts",
    price: 99,
  ),
  Product(
    image: PathConstants.product3,
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: PathConstants.product4,
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
