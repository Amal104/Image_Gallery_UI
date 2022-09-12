import 'package:go_router/go_router.dart';
import 'package:navigation_go_router/components/BaseWidget.dart';
import 'package:navigation_go_router/screens/HomePage.dart';
import 'package:navigation_go_router/screens/LoginScreen.dart';
import 'package:navigation_go_router/screens/MainPage.dart';
import 'package:navigation_go_router/screens/ProfilePage.dart';
import 'package:navigation_go_router/screens/SplashScreen.dart';

final routes = GoRouter(
routes: [
GoRoute(
  path: '/',
  name: 'splashscreen',
  builder: (context, state) => SplashScreen(),
  ),
  GoRoute(
  path: '/loginpage',
  name: 'loginpage',
  builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
  path: '/mainpage',
  name: 'mainpage',
  builder: (context, state) => MainPage(),
  ),
  GoRoute(
  path: '/profile',
  name: 'profile',
  builder: (context, state) => ProfilePage(),
  ),
],
);