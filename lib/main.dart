import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';

import 'package:daranghae/view/start_pages/page_start.dart';
import 'package:daranghae/view/home_pages/child_navigation_bar.dart';
import 'package:daranghae/view/child_home/child_tab_home.dart';
import 'package:daranghae/view/child_home/child_diary_field.dart';
import 'package:daranghae/view/home_pages/parent_navigation_bar.dart';
import 'package:daranghae/view/parent_home/parent_tab_home.dart';
import 'package:daranghae/view/login_pages/register_page.dart';
import 'package:daranghae/view/parent_home/parent_page_analysis.dart';
import 'package:daranghae/view/child_home/child_diary_AI.dart';
import 'package:daranghae/view/parent_home/today_quiz.dart';

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
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorStyles.parentmain, primary: ColorStyles.grey4),
        useMaterial3: true,
      ),
      routes: {
        '/start': (context) => const StartPage(),
        '/parentHome': (context) => const ParentNavigationBar(),
        '/childHome': (context) => const ChildNavigationBar(),
        '/childTabHome': (context) => const ChildTabHome(),
        '/parentTabHome': (context) => const ParentTabHome(),
        '/childDiaryField': (context) => ChildDiaryField(),
        '/childDiaryFieldAI': (context) => ChildDiaryFieldAI(),
        '/register': (context) => RegisterPage(),
        '/analysis': (context) => const ParentAnalysis(),
        '/todayQuiz': (context) => const TodayQuiz(),
      },
      initialRoute: '/start',
    );
  }
}
