// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store_mx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStoreMx on _CartStoreMx, Store {
  final _$cartItemsAtom = Atom(name: '_CartStoreMx.cartItems');

  @override
  ObservableList<ShopItem> get cartItems {
    _$cartItemsAtom.reportRead();
    return super.cartItems;
  }

  @override
  set cartItems(ObservableList<ShopItem> value) {
    _$cartItemsAtom.reportWrite(value, super.cartItems, () {
      super.cartItems = value;
    });
  }

  final _$_CartStoreMxActionController = ActionController(name: '_CartStoreMx');

  @override
  void addItemToCart({required ShopItem shopItem}) {
    final _$actionInfo = _$_CartStoreMxActionController.startAction(
        name: '_CartStoreMx.addItemToCart');
    try {
      return super.addItemToCart(shopItem: shopItem);
    } finally {
      _$_CartStoreMxActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartItems: ${cartItems}
    ''';
  }
}
