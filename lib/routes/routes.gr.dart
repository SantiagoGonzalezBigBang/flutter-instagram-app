// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../instagram/instagram.dart' as _i1;

class Routes extends _i2.RootStackRouter {
  Routes([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    InstagramScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.InstagramScreen());
    },
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    SearchRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchScreen());
    },
    ReelsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ReelsScreen());
    },
    ShopRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ShopScreen());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ProfileScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(InstagramScreen.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name,
              path: 'home', parent: InstagramScreen.name),
          _i2.RouteConfig(SearchRouter.name,
              path: 'search', parent: InstagramScreen.name),
          _i2.RouteConfig(ReelsRouter.name,
              path: 'reels', parent: InstagramScreen.name),
          _i2.RouteConfig(ShopRouter.name,
              path: 'shop', parent: InstagramScreen.name),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: InstagramScreen.name)
        ])
      ];
}

/// generated route for
/// [_i1.InstagramScreen]
class InstagramScreen extends _i2.PageRouteInfo<void> {
  const InstagramScreen({List<_i2.PageRouteInfo>? children})
      : super(InstagramScreen.name, path: '/', initialChildren: children);

  static const String name = 'InstagramScreen';
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i1.SearchScreen]
class SearchRouter extends _i2.PageRouteInfo<void> {
  const SearchRouter() : super(SearchRouter.name, path: 'search');

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i1.ReelsScreen]
class ReelsRouter extends _i2.PageRouteInfo<void> {
  const ReelsRouter() : super(ReelsRouter.name, path: 'reels');

  static const String name = 'ReelsRouter';
}

/// generated route for
/// [_i1.ShopScreen]
class ShopRouter extends _i2.PageRouteInfo<void> {
  const ShopRouter() : super(ShopRouter.name, path: 'shop');

  static const String name = 'ShopRouter';
}

/// generated route for
/// [_i1.ProfileScreen]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
