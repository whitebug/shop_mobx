import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_mobx/pages/pages.dart';
import 'package:shop_mobx/services/router.gr.dart';
import 'package:shop_mobx/services/services.dart';

import '../repositories/repositories.dart';

final GetIt getIt = GetIt.I;

Future locatorSetup() async {
  // Stores
  getIt.registerLazySingleton<ShopPageStore>(
        () => ShopPageStore(),
  );
  getIt.registerLazySingleton<ThemeStore>(
        () => ThemeStore(),
  );
  // Navigation
  getIt.registerLazySingleton<AppRouter>(
        () => AppRouter(),
  );
  // Repository
  getIt.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(
      dio: getIt(),
    ),
  );
  // External
  getIt.registerLazySingleton(() => Dio());
}
