import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class UpperTabQuiz extends StatelessWidget {
  const UpperTabQuiz({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width,
      color: Colors.white,
      child: Column(
        children: [
          //const WelcomeCard(name: '김효정'),
          SizedBox(
            height: 177,
            child: Stack(
              children: [
                Container(
                  height: 140,
                  decoration: const BoxDecoration(
                    // 그라데이션 색상으로 아래부분만 둥글게 처리
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ColorStyles.parentGradient1,
                        ColorStyles.parentmain
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Text(getMonth(), style: TextStyles.whiteBold24),
                          const Icon(Icons.arrow_drop_down,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(height: 35),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('월', style: TextStyles.white16),
                          Text('화', style: TextStyles.white16),
                          Text('수', style: TextStyles.white16),
                          Text('목', style: TextStyles.white16),
                          Text('금', style: TextStyles.white16),
                          Text('토', style: TextStyles.white16),
                          Text('일', style: TextStyles.white16),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 88,
                  right: _width * 0.5 - 29,
                  child: Container(
                    height: 87,
                    width: 58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorStyles.parentmain,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('목', style: TextStyles.parent16),
                        Container(
                            width: 38,
                            height: 1,
                            color: ColorStyles.parentmain),
                        Text(getDay(), style: TextStyles.parent16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // 오늘 날짜를 DateTime.now() 를 활용하여 2024.03.28 형식으로 표시
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('  안녕하세요 ', style: TextStyles.titleMedium24),
                      Text('김춘자', style: TextStyles.parentMedium24),
                      Text('님,', style: TextStyles.titleMedium24),
                    ],
                  ),
                  Text('  좋은 하루예요!', style: TextStyles.titleMedium24),
                ],
              ),
              const SizedBox(width: 20),
              Image.asset('assets/images/darangi_elevated.png', width: 80)
            ],
          ),
          const SizedBox(height: 15),
          Image.asset('assets/images/parent_tab_bar.png', width: _width * 0.9),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  String getDate() {
    final DateTime now = DateTime.now();
    final String formattedDate = DateFormat('yyyy.MM.dd').format(now);

    return formattedDate;
  }

  String getMonth() {
    final DateTime now = DateTime.now();
    final String formattedDate = DateFormat('yyyy.MM').format(now);

    return formattedDate;
  }

  String getDay() {
    final DateTime now = DateTime.now();
    final String formattedDate = '${DateFormat('dd').format(now)}일';

    return formattedDate;
  }
}
