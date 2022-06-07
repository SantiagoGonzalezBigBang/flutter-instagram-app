import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key, 
    required this.tabsRouter
  }) : super(key: key);

  final TabsRouter tabsRouter;
  
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 0.2,
          color: Colors.grey,
        ),
        BottomNavigationBar(          
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          iconSize: 30.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(tabsRouter.activeIndex == 0 ? Icons.home : Icons.home_outlined),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                tabsRouter.activeIndex == 1 ? Icons.search : Icons.search,
                shadows: tabsRouter.activeIndex == 1 ? [
                  const Shadow(
                    color: Colors.white,
                    blurRadius: 5.0
                  )
                ] : null,
              ),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(tabsRouter.activeIndex == 2 ? Icons.video_collection : Icons.video_collection_outlined),
              label: 'Reels'
            ),
            BottomNavigationBarItem(
              icon: Icon(tabsRouter.activeIndex == 3 ? Icons.shop_2 : Icons.shop_2_outlined),
              label: 'Shop'
            ),
            BottomNavigationBarItem(
              icon: Icon(tabsRouter.activeIndex == 4 ? Icons.person : Icons.person_outline),
              label: 'Profile'
            ),
          ]
        ),
      ],
    );
  }
}