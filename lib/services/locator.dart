import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_mobx/pages/pages.dart';
import 'package:shop_mobx/pages/shop/shop_store_mx.dart';
import 'package:shop_mobx/services/router.gr.dart';
import 'package:shop_mobx/services/services.dart';

import '../repositories/repositories.dart';

final GetIt getIt = GetIt.I;

Future locatorSetup() async {
  // Stores
  getIt.registerLazySingleton<ShopStore>(
    () => ShopStoreMx(productsRepository: getIt()),
  );
  getIt.registerLazySingleton<ThemeStore>(
    () => ThemeStore(),
  );
  // Services
  getIt.registerLazySingleton<AppRouter>(
    () => AppRouter(),
  );
  getIt.registerLazySingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  // Repository
  getIt.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(dio: getIt()),
  );
  // External
  getIt.registerLazySingleton(() => Dio());
}
