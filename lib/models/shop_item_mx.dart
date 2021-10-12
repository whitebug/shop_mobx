import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';

import 'shop_item_rating_mx.dart';

part 'shop_item_mx.g.dart';

@JsonSerializable()
class ShopItemMx extends _ShopItemMx with _$ShopItemMx {
  final ShopItemRatingMx rating;

  ShopItemMx({
    required int id,
    required String title,
    required double price,
    required String category,
    required String description,
    required String image,
    required this.rating,
  }) : super(
          id: id,
          title: title,
          price: price,
          category: category,
          description: description,
          image: image,
          rating: rating,
        );

  factory ShopItemMx.fromJson(Map<String, dynamic> json) =>
      _$ShopItemMxFromJson(json);

  Map<String, dynamic> toJson() => _$ShopItemMxToJson(this);

  static List<ShopItemMx> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => ShopItemMx.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

abstract class _ShopItemMx extends ShopItem with Store {
  _ShopItemMx({
    required int id,
    required String title,
    required double price,
    required String category,
    required String description,
    required String image,
    required ShopItemRating rating,
  }) : super(
          id: id,
          title: title,
          price: price,
          category: category,
          description: description,
          image: image,
          rating: rating,
        );
}
