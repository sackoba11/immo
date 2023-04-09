import 'package:flutter/material.dart';
import 'package:immo/screen/homepage.dart';
import 'package:immo/themeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Immo',
      theme: MyTheme.defaultTheme,
      home: const HomePage(),
    );
  }
}
