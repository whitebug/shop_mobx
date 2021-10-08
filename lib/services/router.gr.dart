// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/pages.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ShopRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ShopPage());
    },
    ShopItemRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ShopItemPage());
    },
    ShopTabRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ShopTab());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(ShopRoute.name,
            path: '/',
            children: [_i1.RouteConfig(ShopTabRouter.name, path: 'shop-tab')]),
        _i1.RouteConfig(ShopItemRoute.name, path: '/shop-item-page')
      ];
}

class ShopRoute extends _i1.PageRouteInfo {
  const ShopRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', children: children);

  static const String name = 'ShopRoute';
}

class ShopItemRoute extends _i1.PageRouteInfo {
  const ShopItemRoute() : super(name, path: '/shop-item-page');

  static const String name = 'ShopItemRoute';
}

class ShopTabRouter extends _i1.PageRouteInfo {
  const ShopTabRouter() : super(name, path: 'shop-tab');

  static const String name = 'ShopTabRouter';
}
