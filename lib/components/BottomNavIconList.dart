import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_go_router/screens/FavoritePage.dart';
import 'package:navigation_go_router/screens/HomePage.dart';
import 'package:navigation_go_router/screens/ProfilePage.dart';
import 'package:navigation_go_router/screens/SearchPage.dart';
import 'package:navigation_go_router/screens/SettingsPage.dart';

  int currentindex = 2;

  final pages = [
  SearchPage(),
  FavoritePage(),
  HomePage(),
  SettingsPage(),
  ProfilePage()
];

  
  final List<Widget> items = [
  FaIcon(FontAwesomeIcons.magnifyingGlass,size: 20,),
  FaIcon(FontAwesomeIcons.solidHeart,size: 20,),
  FaIcon(FontAwesomeIcons.houseUser,size: 20,),
  FaIcon(FontAwesomeIcons.gear,size: 20,),
  CircleAvatar(backgroundImage: CachedNetworkImageProvider('https://img.freepik.com/free-vector/mysterious-mafia-man-smoking-cigarette_52683-34828.jpg?w=740&t=st=1662031249~exp=1662031849~hmac=4ad5a513620f3e6c50ba9c7c84c4546a262977b50047ca61f043cf8fd0826a62'),maxRadius: 14,)

];