import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';

import 'package:daranghae/view/start_pages/page_start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'TheJamsil',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorStyles.parentmain),
        useMaterial3: true,
      ),
      routes: {
        '/start': (context) => StartPage(),
      },
      initialRoute: '/start',
    );
  }
}
