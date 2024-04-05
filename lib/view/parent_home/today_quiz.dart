import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';

class TodayQuiz extends StatelessWidget {
  const TodayQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: ColorStyles.parentAppbar,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Image.asset('assets/images/today_quiz.png', width: _width),
            ],
          ),
        ),
      ),
    );
  }
}
