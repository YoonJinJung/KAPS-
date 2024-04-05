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

          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/todayQuiz');
            },
            child: Card(
              elevation: 5,
              surfaceTintColor: Colors.transparent,
              child: Image.asset('assets/images/quiz_start_btn.png',
                  width: _width * 0.85),
            ),
          ),
          const SizedBox(height: 15),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            elevation: 5,
            surfaceTintColor: Colors.transparent,
            child: Container(
              width: _width * 0.85,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('아직 풀지 않은 퀴즈가 남아있어요!',
                      style: TextStyles.content12),
                  const SizedBox(height: 10),
                  // 1 day ago
                  Card(
                    margin: EdgeInsets.only(top: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    elevation: 5,
                    surfaceTintColor: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text('1일', style: TextStyles.parent18),
                              Text(' 전', style: TextStyles.title18),
                            ],
                          ),
                          Image.asset('assets/icons/arrow_down.png', width: 20),
                        ],
                      ),
                    ),
                  ),
                  // 2 days ago
                  Card(
                    margin: EdgeInsets.only(top: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    elevation: 5,
                    surfaceTintColor: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text('2일', style: TextStyles.parent18),
                              Text(' 전', style: TextStyles.title18),
                            ],
                          ),
                          Image.asset('assets/icons/arrow_down.png', width: 20),
                        ],
                      ),
                    ),
                  ),
                  // 3 days ago
                  Card(
                    margin: EdgeInsets.only(top: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    elevation: 5,
                    surfaceTintColor: Colors.transparent,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text('3일', style: TextStyles.parent18),
                              Text(' 전', style: TextStyles.title18),
                            ],
                          ),
                          Image.asset('assets/icons/arrow_down.png', width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
