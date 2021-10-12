import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/pages/pages.dart';
import 'package:shop_mobx/repositories/repositories.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'shop_store_mx.g.dart';

const allProducts = 'all products';

class ShopStoreMx extends _ShopStoreMx with _$ShopStoreMx {
  ShopStoreMx({required ProductsRepository productsRepository})
      : super(productsRepository: productsRepository);
}

abstract class _ShopStoreMx extends ShopStore with Store {
  final ProductsRepository _productsRepository;

  _ShopStoreMx({required ProductsRepository productsRepository})
      : _productsRepository = productsRepository;

  /// All the items of the shop
  List<ShopItem> allItems = [];

  /// Items to be currently displayed
  @observable
  ObservableList<ShopItem> displayedItems = ObservableList<ShopItem>();

  /// Categories of the shop items
  @observable
  ObservableList<String> categories = ObservableList<String>();

  /// Controller for the main grid list
  @observable
  ScrollController scrollController = ScrollController();

  /// Controller for the sliding up panel
  @observable
  PanelController panelController = PanelController();

  /// Filter status
  @observable
  OrderEnum filterStatus = OrderEnum.asc;

  /// Filter status explanation. Default is 'Price: randomly'
  @observable
  String filterString = 'Price: randomly';

  /// Gets all the shop items from the backend
  @action
  Future<void> getAllProducts() async {
    allItems = await _productsRepository.getAllProducts();
    displayedItems = ObservableList.of(allItems);
  }

  /// Gets all the categories from the backend
  @action
  Future getAllCategories() async {
    var cats = await _productsRepository.getAllCategories();
    categories = ObservableList.of(cats);
  }

  /// Sort shop items by specific [category]
  @action
  void getItemsByCategory({
    /// [category] name
    required String category,
  }) {
    if (category == allProducts) {
      displayedItems = ObservableList.of(allItems);
    } else {
      displayedItems = ObservableList.of(
        allItems.where((item) => item.category == category),
      );
    }
    // scrolls back to the beginning when a category is chosen
    animateTo(jump: 0);
  }

  /// Filters shop items by price in asc or desc order
  @action
  void filterByPrice({
    /// filter could be asc or desc
    required OrderEnum filter,
  }) {
    if (filter == OrderEnum.desc) {
      displayedItems.sort((a, b) => a.price.compareTo(b.price));
    } else {
      displayedItems.sort((a, b) => b.price.compareTo(a.price));
    }
  }

  /// scrolls controller to required number
  @action
  void jumpTo({double jump = 0}) {
    scrollController.jumpTo(jump);
  }

  /// smoothly scrolls controller to required number
  @action
  void animateTo({double jump = 0}) {
    scrollController.animateTo(
      jump,
      duration: Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  /// show sliding panel
  @action
  void openPanel() {
    panelController.open();
  }

  /// hide sliding panel
  @action
  void closePanel() {
    panelController.close();
  }

  /// dispose scroll controller of main page grid
  @action
  void disposeScrollController() {
    scrollController.dispose();
  }

  /// dispose sliding panel controller
  @action
  void disposePanelController() {
    panelController.close();
  }

  /// sliding button pressed
  @action
  void onSlidingButtonPressed({required int index}) {
    switch (index) {
      case 0:
        filterStatus = OrderEnum.desc;
        filterString = 'Price: lowest to high';
        break;
      case 1:
        filterStatus = OrderEnum.asc;
        filterString = 'Price: highest to low';
        break;
    }
    filterByPrice(filter: filterStatus);
  }

  /// Gets all the shop items and categories from the backend
  Future getAll() async {
    getAllProducts();
    getAllCategories();
  }
}
