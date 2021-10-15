import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';

part 'shop_item_mx.g.dart';

abstract class _ShopItemMx extends ShopItem with Store {
  @observable
  bool favorite = false;

  @action
  void changeFav() {
    favorite = !favorite;
  }

  _ShopItemMx({
    required int id,
    required String title,
    required double price,
    required String category,
    required String description,
    required String image,
    required ShopItemRatingMx rating,
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

@JsonSerializable()
class ShopItemMx extends _ShopItemMx with _$ShopItemMx {
  @JsonKey(ignore: true)
  bool get favorite;

  ShopItemMx({
    required int id,
    required String title,
    required double price,
    required String category,
    required String description,
    required String image,
    required ShopItemRatingMx rating,
  }) : super(
          id: id,
          title: title,
          price: price,
          category: category,
          description: description,
          image: image,
          rating: rating,
        );

  /// Connect the generated [_$ShopItemMxFromJson] function to the `fromJson`
  /// factory.
  factory ShopItemMx.fromJson(Map<String, dynamic> json) =>
      _$ShopItemMxFromJson(json);

  /// Connect the generated [_$ShopItemMxToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ShopItemMxToJson(this);

  static List<ShopItemMx> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => ShopItemMx.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Define that two [ShopItemMx] are equal
  @override
  bool operator ==(other) {
    return (other is ShopItemMx) &&
        other.id == id &&
        other.title == title &&
        other.price == price &&
        other.category == category &&
        other.description == description &&
        other.image == image &&
        other.rating == rating;
  }
}
