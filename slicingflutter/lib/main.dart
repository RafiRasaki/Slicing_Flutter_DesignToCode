import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:slicingflutter/Page/detai_page.dart';
import 'package:slicingflutter/Page/home_page.dart';
import 'package:slicingflutter/Page/intermezzo_page.dart';
import 'package:slicingflutter/Page/splash_screen.dart';

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
      routes: {
      '/' :(context) => SplashPage(),
      '/intermezzo' :(context) => IntermezzoPage(),
      '/homepage' :(context) => HomePage(),
      '/detailpage' :(context) => DetailPage(),
      },
    );
  }
}
