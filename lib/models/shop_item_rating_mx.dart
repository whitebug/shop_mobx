import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';

part 'shop_item_rating_mx.g.dart';

@JsonSerializable()
class ShopItemRatingMx extends _ShopItemRatingMx with _$ShopItemRatingMx {
  ShopItemRatingMx({
    required double rate,
    required dynamic count,
  }) : super(
          rate: rate,
          count: count,
        );

  factory ShopItemRatingMx.fromJson(Map<String, dynamic> json) =>
      _$ShopItemRatingMxFromJson(json);

  Map<String, dynamic> toJson() => _$ShopItemRatingMxToJson(this);

  static List<ShopItemRatingMx> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => ShopItemRatingMx.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

abstract class _ShopItemRatingMx extends ShopItemRating with Store {
  _ShopItemRatingMx({
    required double rate,
    required dynamic count,
  }) : super(
          rate: rate,
          count: count,
        );
}
