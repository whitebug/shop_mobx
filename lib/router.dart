import 'package:auto_route/annotations.dart';

import 'pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ShopPage, initial: true, children: [
      AutoRoute(
        name: 'ShopTabRouter',
        page: ShopTab,
        initial: true,
      ),
    ]),
    AutoRoute(page: ShopItemPage),
  ],
)
class $AppRouter {}
