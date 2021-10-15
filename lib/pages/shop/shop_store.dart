import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

abstract class ShopStore with Store {
  /// All the items of the shop
  List<ShopItem> allItems = [];
  /// Items to be currently displayed
  List<ShopItem> get displayedItems;
  /// Categories of the shop items
  List<String> get categories;
  /// Controller for the main grid list
  ScrollController get scrollController;
  /// Controller for the sliding up panel
  PanelController get panelController;
  /// Filter status
  OrderEnum get filterStatus;
  /// Filter status explanation. Default is 'Price: randomly'
  String get filterString;
  /// View of shop items
  ShopListEnum get shopListType;
  /// Gets all the shop items from the backend
  Future<void> getAllProducts();
  /// Gets all the categories from the backend
  Future getAllCategories();
  /// Sort shop items by specific [category]
  void getItemsByCategory({
    /// [category] name
    required String category,
  });
  /// Filters shop items by price in asc or desc order
  void filterByPrice({
    /// filter could be asc or desc
    required OrderEnum filter,
  });
  /// scrolls controller to required number
  void jumpTo({double jump = 0});
  /// smoothly scrolls controller to required number
  void animateTo({double jump = 0});
  /// show sliding panel
  void openPanel();
  /// hide sliding panel
  void closePanel();
  /// dispose scroll controller of main page grid
  void disposeScrollController();
  /// dispose sliding panel controller
  void disposePanelController();
  /// sliding button pressed
  void onSlidingButtonPressed({required int index});
  /// Changes shop type
  void changeShopType();
  /// Gets all the shop items and categories from the backend
  Future getAll();
}
