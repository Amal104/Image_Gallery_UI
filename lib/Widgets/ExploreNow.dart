
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class explorenow extends StatelessWidget {
  const explorenow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Stack(
        children:[ Container(
          child: Row(
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Explore',style: GoogleFonts.bungee(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 3,color: Colors.black38)),
                 Text('Now!',style: GoogleFonts.prompt(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.deepPurple.shade400)),
              ],
                ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
