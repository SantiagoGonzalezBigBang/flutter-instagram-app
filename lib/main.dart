import 'package:flutter/material.dart';
import 'package:instagram_app/routes/routes.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _routes = Routes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff000000),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: const Color(0xff000000)
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
          backgroundColor: const Color(0xff000000),          
        ),
        colorScheme: const ColorScheme.dark().copyWith(secondary: const Color(0xffFAFAFA))
      ),
      routerDelegate: _routes.delegate(),
      routeInformationParser: _routes.defaultRouteParser(),
    );
  }
}