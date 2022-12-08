import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/screen/homescreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Todo App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: GoogleFonts.nunito().fontFamily),
    home: const HomeScreen(),
  ));
}
