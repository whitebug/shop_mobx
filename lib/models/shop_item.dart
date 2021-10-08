import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'shop_item.freezed.dart';
part 'shop_item.g.dart';

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

@freezed
class ShopItem with _$ShopItem {
  const factory ShopItem({
    required int id,
    required String title,
    required double price,
    required String category,
    required String description,
    required String image,
    required ShopItemRating rating,
  }) = _ShopItem;

  factory ShopItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShopItemFromJson(
        json,
      );

  static List<ShopItem> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => ShopItem.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
