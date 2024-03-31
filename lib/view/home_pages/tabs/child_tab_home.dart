import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/home_pages/widgets/welcome_card.dart';
import 'package:daranghae/view/home_pages/widgets/diary_card.dart';

class ChildTabHome extends StatefulWidget {
  const ChildTabHome({Key? key}) : super(key: key);

  @override
  _ChildTabHomeState createState() => _ChildTabHomeState();
}

class _ChildTabHomeState extends State<ChildTabHome> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        width: _width,
        color: ColorStyles.childBackground1,
        child: Column(
          children: [
            const WelcomeCard(name: '김효정'),
            const SizedBox(height: 25),
            // 오늘 날짜를 DateTime.now() 를 활용하여 2024.03.28 형식으로 표시
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    getDate(),
                    style: TextStyles.titleBold20,
                  ),
                  Expanded(child: SizedBox()),
                  Image.asset('assets/icons/calendar_circle.png', width: 32),
                  const SizedBox(width: 10),
                  Image.asset('assets/icons/star_circle.png', width: 32),
                ],
              ),
            ),
            const SizedBox(height: 15),
            DiaryCard(
                date: DateTime.now(),
                title: '초밥을 먹으며...',
                content:
                    '오늘 오랜만에 초밥을 먹었는데, 할머니 생각이 났어요. 부산에 놀러갔을 때 같이 먹었던 초밥 기억나시나요? ㅎㅎ 다음에 더 맛있는거 같이 먹으러가요! ... 그때의 그 맛이 아직도 입 안에 가득해요. 할머니와 함께 부산의 작은 초밥집에서 먹었던 그 초밥은 지금까지 먹어본 초밥 중에서 가장 맛있었어요. 바다를 바라보며 먹었던 그 신선한 맛, 그리고 할머니와 나눴던 이야기들이 오늘따라 유독 생각이 많이 나네요. 할머니, 요즘 건강하시죠? 저는 요즘 학교에 다니면서도 할머니 생각이 자주 나요. 할머니가 항상 말씀해주시던 것처럼, 저도 열심히 하고 있으니까 걱정 마세요.'),
            DiaryCard(
                date: DateTime.now(),
                title: '초밥 레시피',
                content: '초밥은 밥과 재료를 준비하면 끝!'),
            SizedBox(height: 150),
            Text('맨위', style: TextStyles.content16),
            SizedBox(height: 1000),
            Text('중간'),
            SizedBox(height: 1000),
            Text('아래'),
            SizedBox(height: 1000)
          ],
        ),
      ),
    );
  }

  String getDate() {
    final DateTime now = DateTime.now();
    final String formattedDate = DateFormat('yyyy.MM.dd').format(now);

    return formattedDate;
  }
}
