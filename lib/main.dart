import 'package:coba_flutter/slicing.dart';
import 'package:coba_flutter/ui.dart';
import 'package:flutter/material.dart';
import 'package:coba_flutter/login.dart';
import 'package:coba_flutter/splash.dart';
import 'package:coba_flutter/homePage.dart';
import 'package:coba_flutter/praktek.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Baru'),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
