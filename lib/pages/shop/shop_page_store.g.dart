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

  final _$scrollControllerAtom = Atom(name: '_ShopPageStore.scrollController');

  @override
  ScrollController get scrollController {
    _$scrollControllerAtom.reportRead();
    return super.scrollController;
  }

  @override
  set scrollController(ScrollController value) {
    _$scrollControllerAtom.reportWrite(value, super.scrollController, () {
      super.scrollController = value;
    });
  }

  final _$panelControllerAtom = Atom(name: '_ShopPageStore.panelController');

  @override
  PanelController get panelController {
    _$panelControllerAtom.reportRead();
    return super.panelController;
  }

  @override
  set panelController(PanelController value) {
    _$panelControllerAtom.reportWrite(value, super.panelController, () {
      super.panelController = value;
    });
  }

  final _$filterStatusAtom = Atom(name: '_ShopPageStore.filterStatus');

  @override
  OrderEnum get filterStatus {
    _$filterStatusAtom.reportRead();
    return super.filterStatus;
  }

  @override
  set filterStatus(OrderEnum value) {
    _$filterStatusAtom.reportWrite(value, super.filterStatus, () {
      super.filterStatus = value;
    });
  }

  final _$filterStringAtom = Atom(name: '_ShopPageStore.filterString');

  @override
  String get filterString {
    _$filterStringAtom.reportRead();
    return super.filterString;
  }

  @override
  set filterString(String value) {
    _$filterStringAtom.reportWrite(value, super.filterString, () {
      super.filterString = value;
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
  void openPanel() {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.openPanel');
    try {
      return super.openPanel();
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void closePanel() {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.closePanel');
    try {
      return super.closePanel();
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void disposeScrollController() {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.disposeScrollController');
    try {
      return super.disposeScrollController();
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void disposePanelController() {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.disposePanelController');
    try {
      return super.disposePanelController();
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSlidingButtonPressed({required int index}) {
    final _$actionInfo = _$_ShopPageStoreActionController.startAction(
        name: '_ShopPageStore.onSlidingButtonPressed');
    try {
      return super.onSlidingButtonPressed(index: index);
    } finally {
      _$_ShopPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
displayedItems: ${displayedItems},
categories: ${categories},
scrollController: ${scrollController},
panelController: ${panelController},
filterStatus: ${filterStatus},
filterString: ${filterString}
    ''';
  }
}
