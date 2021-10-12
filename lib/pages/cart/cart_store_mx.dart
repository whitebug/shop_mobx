import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/repositories/repositories.dart';

import 'cart_store.dart';

part 'cart_store_mx.g.dart';

abstract class _CartStoreMx extends CartStore with Store {
  final ProductsRepository _productsRepository;

  _CartStoreMx({
    required ProductsRepository productsRepository,
  }) : _productsRepository = productsRepository;

  @observable
  ObservableList<ShopItem> cartItems = ObservableList<ShopItem>();

  @action
  void addItemToCart({required ShopItem shopItem}) {
    cartItems.add(shopItem);
  }

  @override
  void removeItemFromCart({required ShopItem shopItem}) {
    // TODO: implement removeItemFromCart
  }
}

class CartStoreMx extends _CartStoreMx with _$CartStoreMx {
  CartStoreMx({
    required ProductsRepository productsRepository,
  }) : super(productsRepository: productsRepository);
}
