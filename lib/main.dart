import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_saldo/Dashboard/dashboard_screen.dart';

import 'constants.dart';

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
