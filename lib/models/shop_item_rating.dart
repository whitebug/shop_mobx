import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_item_rating.freezed.dart';
part 'shop_item_rating.g.dart';

/// "rating": {
///   "rate": 3.9,
///   "count": '120'
/// }

@freezed
class ShopItemRating with _$ShopItemRating {
  const factory ShopItemRating({
    required double rate,
    required dynamic count,
  }) = _ShopItemRating;

  factory ShopItemRating.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShopItemRatingFromJson(
        json,
      );
}
