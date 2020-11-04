

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  String word;
  TextWidget(this.word);
  @override
  Widget build(BuildContext context) {
    return Text(word,style: GoogleFonts.alata(fontSize: 25,letterSpacing: 1.2,),overflow: TextOverflow.ellipsis,maxLines: 7,);
  }


}
