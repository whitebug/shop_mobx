import 'package:mobx/mobx.dart';

import 'models.dart';

/// {
///   "id": 1,
///   "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
///   "price": 109.95,
///   "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
///   "category": "men's clothing",
///   "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
///   "rating": {
///     "rate": 3.9,
///     "count": 120
///   }
/// }

class ShopItem with Store {
  final int id;
  final String title;
  final double price;
  final String category;
  final String description;
  final String image;
  final ShopItemRating rating;

  ShopItem({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
    required this.rating,
  });
}
