import 'package:flutter/material.dart';

import 'package:projext_morning/splash_screen.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
          fontFamily: AutofillHints.language,
          backgroundColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      title: 'E Wishes',
      home: SplashScreen()));
}
