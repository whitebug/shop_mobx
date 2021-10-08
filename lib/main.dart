import 'package:flutter/material.dart';
import 'package:shop_mobx/services/services.dart';

import 'services/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  locatorSetup();
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  final _appRouter = getIt<AppRouter>();
  ShopApp({Key? key}) : super(key: key);
  final theme = ThemeStore();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => <NavigatorObserver>[],
      ),
      title: 'Flutter Demo',
      theme: theme.themeData,
    );
  }
}