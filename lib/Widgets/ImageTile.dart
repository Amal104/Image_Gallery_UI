
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePageGridImage.dart';

class ImageTile extends StatelessWidget {
  final String image;

  const ImageTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        height: 150.0,
        width: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            boxShadow:const [
              BoxShadow(
                  color: Color(0xFFA8AABC),
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
           gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade100,
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ]
            ) 
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedImage(image:image ),
        ),
      ),
    );
  }
}
