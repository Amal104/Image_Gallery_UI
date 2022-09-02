import 'package:go_router/go_router.dart';
import 'package:navigation_go_router/screens/HomePage.dart';
import 'package:navigation_go_router/screens/LoginScreen.dart';
import 'package:navigation_go_router/screens/MainPage.dart';
import 'package:navigation_go_router/screens/ProfilePage.dart';

final routes = GoRouter(
routes: [
GoRoute(
  path: '/',
  name: 'mainpage',
  builder: (context, state) => MainPage(),
  ),
  GoRoute(
  path: '/home',
  name: 'home',
  builder: (context, state) => HomePage(),
  ),
  GoRoute(
  path: '/profile',
  name: 'profile',
  builder: (context, state) => ProfilePage(),
  ),
],
);