import 'package:flutter/material.dart';
import 'package:insta_app/responsive/mobile.dart';
import 'package:insta_app/responsive/responsive.dart';
import 'package:insta_app/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData.dark(),
      home: const Responsive(
        mymobile: MobileScreen(),
        myweb: WebScreen(),
      ),
    );
  }
}
