import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';

/// Shopping cart
abstract class CartStore with Store {
  List<ShopItem> get cartItems;
  void addItemToCart({required ShopItem shopItem});
  void removeItemFromCart({required ShopItem shopItem});
}