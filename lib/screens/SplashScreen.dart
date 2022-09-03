import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
 void initState() {
 super.initState();
 Timer(
    Duration(milliseconds: 4000),
    () => context.go('/mainpage'));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children:[ 
        LottieBuilder.asset('assets/splash.json',fit: BoxFit.cover,height: double.infinity,),
        Center(child: Text('Galleriya',style: GoogleFonts.pacifico(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 3),)),
        ]),
    );
  }
}