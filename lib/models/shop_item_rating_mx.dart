import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';

part 'shop_item_rating_mx.g.dart';

abstract class _ShopItemRatingMx extends ShopItemRating with Store {
  _ShopItemRatingMx({
    required double rate,
    required dynamic count,
  }) : super(
          rate: rate,
          count: count,
        );
}

@JsonSerializable()
class ShopItemRatingMx extends _ShopItemRatingMx with _$ShopItemRatingMx {
  ShopItemRatingMx({
    required double rate,
    required dynamic count,
  }) : super(
          rate: rate,
          count: count,
        );

  /// Connect the generated [_$ShopItemRatingMxFromJson] function to the `fromJson`
  /// factory.
  factory ShopItemRatingMx.fromJson(Map<String, dynamic> json) =>
      _$ShopItemRatingMxFromJson(json);

  /// Connect the generated [_$ShopItemRatingMxToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ShopItemRatingMxToJson(this);

  ///
  static List<ShopItemRatingMx> fromJsonToList(dynamic data) {
    return (data as List)
        .map((e) => ShopItemRatingMx.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Define that two [ShopItemRatingMx] are equal
  @override
  bool operator ==(other) {
    return (other is ShopItemRatingMx) &&
        other.rate == rate &&
        other.count == count;
  }
}
