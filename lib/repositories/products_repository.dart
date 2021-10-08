import '../models/models.dart';

abstract class ProductsRepository {
  Future<List<ShopItem>> getAllProducts({OrderEnum? order});
  Future<List<ShopItem>> getSeveralProducts({required int quantity});
  Future<ShopItem> getProductById({required int id});
  Future<List<String>> getAllCategories();
  Future<List<ShopItem>> getProductsByCategory({
    required String category,
  });
}