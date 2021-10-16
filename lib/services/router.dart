import 'package:auto_route/annotations.dart';
import 'package:shop_mobx/pages/item/item_page.dart';

import '../pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ShopPage, initial: true, children: [
      AutoRoute(
        name: 'ShopTabRouter',
        page: ShopTab,
      ),
    ]),
    AutoRoute(page: ShopItemPage),
    AutoRoute(page: ItemPage),
  ],
)
class $AppRouter {}
