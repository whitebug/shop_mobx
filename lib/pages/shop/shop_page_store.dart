import 'package:mobx/mobx.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/repositories/repositories.dart';

import '../../locator.dart';

part 'shop_page_store.g.dart';

const allProducts = 'all products';

class ShopPageStore = _ShopPageStore with _$ShopPageStore;

abstract class _ShopPageStore with Store {
  final ProductsRepository _productsRepository = getIt<ProductsRepository>();

  /// Items of the shop
  @observable
  ObservableList<ShopItem> shopItems = ObservableList<ShopItem>();

  /// Categories of the shop items
  @observable
  ObservableList<String> categories = ObservableList<String>();

  /// Gets all the shop items from the backend
  @action
  Future<void> getAllProducts() async {
    var items = await _productsRepository.getAllProducts();
    shopItems = ObservableList.of(items);
  }

  /// Gets all the categories from the backend
  @action
  Future getAllCategories() async {
    var cats = await _productsRepository.getAllCategories();
    categories = ObservableList.of(cats);
  }

  /// Sort shop items by specific [category]
  @action
  ObservableList<ShopItem> getProductsByCategory({
    /// [category] name
    required String category,
  }) =>
      ObservableList.of(
        shopItems.where((item) => item.category == category),
      );

  /// Filters shop items by price in asc or desc order
  @action
  ObservableList<ShopItem> filterByPrice({
    /// filter could be asc or desc
    required OrderEnum filter,
    /// items that needs to be sorted
    required List<ShopItem> items,
  }) {
    items.sort((a, b) => a.price.compareTo(b.price));
    if (filter == OrderEnum.desc) {
      items.reversed;
    }
    return ObservableList.of(items);
  }

  /// Gets all the shop items and categories from the backend
  Future getAll() async {
    getAllProducts();
    getAllCategories();
  }
}
