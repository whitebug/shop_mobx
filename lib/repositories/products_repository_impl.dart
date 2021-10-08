import 'package:dio/dio.dart';
import 'package:shop_mobx/models/models.dart';
import 'package:shop_mobx/pages/pages.dart';
import 'package:shop_mobx/repositories/products_repository.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  /// Main backend url
  static const String url = 'https://fakestoreapi.com';
  final Dio dio;

  ProductsRepositoryImpl({required this.dio});

  /// Download all shop items from the backend
  @override
  Future<List<ShopItem>> getAllProducts({

    OrderEnum? order,
  }) async {
    var response = await dio.get(
      '$url/products${order == null ? '?sort=${order.toString()}' : ''}',
    );
    var result = ShopItem.fromJsonToList(response.data);
    return result;
  }

  @override
  Future<List<ShopItem>> getSeveralProducts({required int quantity}) async {
    var response = await dio.get(
      '$url/products?limit=$quantity',
    );
    return ShopItem.fromJsonToList(response.data);
  }

  @override
  Future<ShopItem> getProductById({required int id}) async {
    var response = await dio.get(
      '$url/products/$id',
    );
    return ShopItem.fromJson(response.data);
  }

  @override
  Future<List<String>> getAllCategories() async {
    var response = await dio.get(
      '$url/products/categories',
    );
    List<String> result = [allProducts];
    result.addAll(response.data.cast<String>());
    return result;
  }

  @override
  Future<List<ShopItem>> getProductsByCategory({
    required String category,
  }) async {
    if (category == allProducts) {
      return getAllProducts();
    } else {
      var response = await dio.get(
        '$url/products/category/$category',
      );
      return ShopItem.fromJsonToList(response.data);
    }
  }
}
