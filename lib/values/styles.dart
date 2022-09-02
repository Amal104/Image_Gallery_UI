import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// var LoginTextStyle= GoogleFonts.pacifico(color:Colors.deepPurple,fontSize:25.0);

class Styles {
  LoginTextStyle(Color color, double fontsize) =>
      GoogleFonts.pacifico(color: color, fontSize: fontsize);
  HomePageAppbarText(Color color, double fontsize, double letterspacing) =>
      GoogleFonts.pacifico(
        color: color,
        fontSize: fontsize,
        letterSpacing: letterspacing,
      );
  var TextStyle =
      GoogleFonts.pacifico(color: Colors.deepPurple, fontSize: 25.0);
}
