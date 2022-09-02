import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/BottomNavIconList.dart';
import '../screens/FavoritePage.dart';
import '../screens/HomePage.dart';
import '../screens/ProfilePage.dart';
import '../screens/SearchPage.dart';
import '../screens/SettingsPage.dart';

class MainPage extends StatefulWidget {
  
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

    String status = '';

  late StreamSubscription subscription;

  Future<void> checkConnectivity() async {
    var result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile) {
      setState(() {
        status = 'Connected to a Mobile Network';
      });
    } else if (result == ConnectivityResult.wifi) {
      setState(() {
        status = 'Connected to a Wifi Network';
      });
    }
  }

  @override
  void initState() {
    checkConnectivity();

    subscription = Connectivity().onConnectivityChanged.listen((result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Container(
            padding: EdgeInsets.all(8) ,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('You\'re',style: TextStyle(fontWeight: FontWeight.values[3]),),
                  Text('Connected to ' + result.name,style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2),),
                ],
              ),
            )),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            ),
      );

      setState(() {
        status = result.name;
        result.name;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentindex],
      bottomNavigationBar: CurvedNavigationBar(
       onTap: (newIndex) {
         setState(() {
           currentindex = newIndex;
         });
       },
       items: items,
       backgroundColor: Colors.transparent,
       index: currentindex,
       buttonBackgroundColor: Colors.deepPurple.shade100,
       color: Colors.deepPurple.shade300,
       height: 50,
       animationDuration: const Duration(milliseconds: 200),
       ),
    );
  }
}
