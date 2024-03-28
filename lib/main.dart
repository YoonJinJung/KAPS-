import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';

import 'package:daranghae/view/start_pages/page_start.dart';
import 'package:daranghae/view/home_pages/child_navigation_bar.dart';
import 'package:daranghae/view/home_pages/tabs/child_tab_home.dart';
import 'package:daranghae/view/home_pages/parent_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'TheJamsil',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorStyles.parentmain),
        useMaterial3: true,
      ),
      routes: {
        '/start': (context) => const StartPage(),
        '/parentHome': (context) => const ParentNavigationBar(),
        '/childHome': (context) => const ChildNavigationBar(),
        '/childTabHome': (context) => const ChildTabHome(),
      },
      initialRoute: '/start',
    );
  }
}
