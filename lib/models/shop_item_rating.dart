import 'package:mobx/mobx.dart';

/// "rating": {
///   "rate": 3.9,
///   "count": '120'
/// }

abstract class ShopItemRating with Store {
  final double rate;
  final dynamic count;

  ShopItemRating({
    required this.rate,
    required this.count,
  });
}
