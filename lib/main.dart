import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_saldo/Dashboard/dashboard_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: kDarkColor,
      systemNavigationBarColor: kDarkColor,
    ),
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        primaryColor: kPrimaryColor,
        canvasColor: kDarkColor,
        backgroundColor: kDarkColor,
        scaffoldBackgroundColor: kDarkColor,
        iconTheme: IconThemeData(
          size: 24,
          color: kLightColor,
        ),
      ),
    ),
  );
}
