import 'package:flutter/material.dart';

import 'locator.dart';
import 'pages/pages.dart';
import 'router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  locatorSetup();
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  final _appRouter = getIt<AppRouter>();
  ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => <NavigatorObserver>[],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        iconTheme: const IconThemeData(
          color: Colors.red,
        )
      ),
    );
  }
}