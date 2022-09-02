import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_go_router/values/styles.dart';
import '../Widgets/ExploreNow.dart';
import '../Widgets/ImageBuilder.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Galleriya',
            style: Styles().HomePageAppbarText(Colors.deepPurple, 26.0, 2)),
            actions:  [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: IconButton(onPressed: () {},icon:FaIcon(FontAwesomeIcons.camera,color: Colors.black38,size: 23,)),
              )
            ],
      ),
      body: LiquidPullToRefresh(
        height: 80.0,
        animSpeedFactor: 2.0,
        springAnimationDurationInMilliseconds: 300,
        backgroundColor: Colors.white,
        color: Colors.deepPurple.shade300,
        onRefresh: () =>Future.delayed(Duration(milliseconds: 500)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              explorenow(),
              ImageBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
