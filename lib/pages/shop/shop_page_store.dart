import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/repositories/repositories.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../services/locator.dart';

part 'shop_page_store.g.dart';

const allProducts = 'all products';

class ShopPageStore = _ShopPageStore with _$ShopPageStore;

abstract class _ShopPageStore with Store {
  final ProductsRepository _productsRepository = getIt<ProductsRepository>();

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
    displayedItems.sort((a, b) => a.price.compareTo(b.price));
    if (filter == OrderEnum.desc) {
      displayedItems.reversed;
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

  /// Gets all the shop items and categories from the backend
  Future getAll() async {
    getAllProducts();
    getAllCategories();
  }
}
