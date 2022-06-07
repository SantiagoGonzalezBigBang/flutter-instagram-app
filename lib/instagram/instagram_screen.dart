import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:instagram_app/routes/routes.gr.dart';
import 'package:instagram_app/instagram/widgets/widgets.dart';
import 'package:instagram_app/instagram/blocs/blocs.dart';
import 'package:instagram_app/instagram/screens/screens.dart';

class InstagramScreen extends StatelessWidget {
   
  const InstagramScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc(),)
      ],
      child: AutoTabsRouter(
        routes: const [
          HomeRouter(),
          SearchRouter(),
          ReelsRouter(),
          ShopRouter(),
          ProfileRouter()
        ],
        builder: (context, child, animation) {
    
          final tabsRouter = AutoTabsRouter.of(context);
    
          return tabsRouter.activeIndex == 0 ? _buildHomePageView(
            context,
            child, 
            tabsRouter
          ) : buildNormalScaffolds(child, tabsRouter);
        },  
      ),
    );    
  }

  Scaffold buildNormalScaffolds(Widget child, TabsRouter tabsRouter) {
    return Scaffold(
      body: child,
      bottomNavigationBar: CustomBottomNavigationBar(tabsRouter: tabsRouter),
    );
  }

  PageView _buildHomePageView(BuildContext context, Widget child, TabsRouter tabsRouter) {

    //Puedo crear un bloc donde se maneje la logica del pageController y en general del HomePage 

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: BlocProvider.of<HomeBloc>(context).pageViewController,
      children: [
        const CameraScreen(),
        Scaffold(
          body: child,
          bottomNavigationBar: CustomBottomNavigationBar(tabsRouter: tabsRouter),
        ),
        const MessagesScreen()
      ],
    );
  }
}