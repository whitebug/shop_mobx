// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i3;

import 'pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    ShopRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ShopPage());
    },
    ShopItemRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ShopItemPage());
    },
    ShopTabRouter.name: (routeData) {
      final args = routeData.argsAs<ShopTabRouterArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ShopTab(store: args.store, key: args.key));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(ShopRoute.name,
            path: '/',
            children: [_i2.RouteConfig(ShopTabRouter.name, path: '')]),
        _i2.RouteConfig(ShopItemRoute.name, path: '/shop-item-page')
      ];
}

/// generated route for [_i1.ShopPage]
class ShopRoute extends _i2.PageRouteInfo<void> {
  const ShopRoute({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'ShopRoute';
}

/// generated route for [_i1.ShopItemPage]
class ShopItemRoute extends _i2.PageRouteInfo<void> {
  const ShopItemRoute() : super(name, path: '/shop-item-page');

  static const String name = 'ShopItemRoute';
}

/// generated route for [_i1.ShopTab]
class ShopTabRouter extends _i2.PageRouteInfo<ShopTabRouterArgs> {
  ShopTabRouter({required _i1.ShopPageStore store, _i4.Key? key})
      : super(name, path: '', args: ShopTabRouterArgs(store: store, key: key));

  static const String name = 'ShopTabRouter';
}

class ShopTabRouterArgs {
  const ShopTabRouterArgs({required this.store, this.key});

  final _i1.ShopPageStore store;

  final _i4.Key? key;
}
