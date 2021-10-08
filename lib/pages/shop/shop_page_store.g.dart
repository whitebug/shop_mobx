// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShopPageStore on _ShopPageStore, Store {
  final _$displayedItemsAtom = Atom(name: '_ShopPageStore.displayedItems');

  @override
  ObservableList<ShopItem> get displayedItems {
    _$displayedItemsAtom.reportRead();
    return super.displayedItems;
  }

  @override
  set displayedItems(ObservableList<ShopItem> value) {
    _$displayedItemsAtom.reportWrite(value, super.displayedItems, () {
      super.displayedItems = value;
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

  final _$controllerAtom = Atom(name: '_ShopPageStore.controller');

  @override
  ScrollController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(ScrollController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
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
  void getItemsByCategory({required String category}) {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.getItemsByCategory');
    try {
      return super.getItemsByCategory(category: category);
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void filterByPrice({required OrderEnum filter}) {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.filterByPrice');
    try {
      return super.filterByPrice(filter: filter);
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void jumpTo({double jump = 0}) {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.jumpTo');
    try {
      return super.jumpTo(jump: jump);
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animateTo({double jump = 0}) {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.animateTo');
    try {
      return super.animateTo(jump: jump);
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void disposeController() {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.disposeController');
    try {
      return super.disposeController();
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
displayedItems: ${displayedItems},
categories: ${categories},
controller: ${controller}
    ''';
  }
}
