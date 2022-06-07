import 'package:auto_route/auto_route.dart';

import 'package:instagram_app/instagram/instagram.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: InstagramScreen,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: HomeScreen
        ),
        AutoRoute(
          path: 'search',
          name: 'SearchRouter',
          page: SearchScreen
        ),
        AutoRoute(
          path: 'reels',
          name: 'ReelsRouter',
          page: ReelsScreen
        ),
        AutoRoute(
          path: 'shop',
          name: 'ShopRouter',
          page: ShopScreen
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: ProfileScreen
        ),
      ]
    )
  ]
)

class $Routes {}