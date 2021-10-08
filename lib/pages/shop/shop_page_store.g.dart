// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShopPageStore on _ShopPageStore, Store {
  final _$shopItemsAtom = Atom(name: '_ShopPageStore.shopItems');

  @override
  ObservableList<ShopItem> get shopItems {
    _$shopItemsAtom.reportRead();
    return super.shopItems;
  }

  @override
  set shopItems(ObservableList<ShopItem> value) {
    _$shopItemsAtom.reportWrite(value, super.shopItems, () {
      super.shopItems = value;
    });
  }

  final _$categoriesAtom = Atom(name: '_ShopPageStore.categories');

  @override
  ObservableList<String> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(ObservableList<String> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$getAllProductsAsyncAction =
      AsyncAction('_ShopPageStore.getAllProducts');

  @override
  Future<void> getAllProducts() {
    return _$getAllProductsAsyncAction.run(() => super.getAllProducts());
  }

  final _$getAllCategoriesAsyncAction =
      AsyncAction('_ShopPageStore.getAllCategories');

  @override
  Future<dynamic> getAllCategories() {
    return _$getAllCategoriesAsyncAction.run(() => super.getAllCategories());
  }

  final _$_ShopPageStoreActionController =
      ActionController(name: '_ShopPageStore');

  @override
  ObservableList<ShopItem> getProductsByCategory({required String category}) {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.getProductsByCategory');
    try {
      return super.getProductsByCategory(category: category);
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  ObservableList<ShopItem> filterByPrice(
      {required OrderEnum filter, required List<ShopItem> items}) {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.filterByPrice');
    try {
      return super.filterByPrice(filter: filter, items: items);
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
shopItems: ${shopItems},
categories: ${categories}
    ''';
  }
}
