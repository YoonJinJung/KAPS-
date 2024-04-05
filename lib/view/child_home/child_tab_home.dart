import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/child_home/widgets/welcome_card.dart';
import 'package:daranghae/view/child_home/widgets/diary_card.dart';

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
            const WelcomeCard(name: '이효정'),
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
                date: DateTime(2024, 4, 5),
                title: '사랑하는 할머니께',
                content:
                    '할머니! 오늘따라 고등학교 졸업식 때가 생각나요. 🎓 그때 할머니께서 못 오실 줄 알았는데, 몰래 오셔서 꽃다발을 주셨잖아요! 🌺🌺 정말 기억에 남는 순간이에요. 고등학생 때 생각하니까, 학창시절에 할머니 댁 놀러가면 항상 김치찌개 해주셨던 것도 떠올라요. 증말 김치찌개는 한국인의 소울푸드임에 틀림 없어요! 할머니의 돼지고기 김치찌개는 미슐랭 100스타를 받아도 모잘라요. 아 그리고 오늘은 고등학교 친구들이랑 야구를 했어요! ⚾️제가 무려 안타를 세 번이나 쳐서 신났어요! 오늘도 행복한 하루 되셨으면 좋겠어요! 곧 추석 때 봬요.'),
            DiaryCard(
                date: DateTime(2024, 4, 4),
                title: '사랑하는 할머니께',
                content:
                    '할머니, 안녕하세요! 이제 가을이라 그런지, 오늘 날씨가 짱 좋아요! 하늘도 파랗고, 딱 적딩히 시원해서 기분이 엄청 좋아요 🌤️ 오늘은 아빠, 엄마, 동생이랑 다같이 한강 공원으로 나들이를 다녀 왔어요. 가서 치킨 먹구, 자전거도 같이 탔어요! 오랜만에 공원에 가서 노니까, 작년 가을에 할아버지 할머니랑 군산 호수공원으로 놀러갔던 게 생각났어요. 그때도 날씨 진짜 좋았는데, 나중에 다시 또 가요! 다음엔 호수공원에서 고기도 구워 먹어요! 🥩사랑해요, 할머니. '),
            SizedBox(
              height: 400,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 200,
                    child:
                        Image.asset('assets/images/empty_rect.png', width: 300),
                  ),
                  SizedBox(
                    height: 260,
                    child: DiaryCard(
                        date: DateTime(2024, 4, 3),
                        title: '사랑하는 할머니께',
                        content:
                            '오늘은 정말로 뜻깊은 날이었어요! 🌼 오늘 친구들이랑 같이 안산시에서 주관하는 봉사활동에 참여했어요. 가족과 떨어져 사시는 할머니, 할아버지분들 댁에 찾아가서 말동무도 해드리고, 화투도 쳤어요.🎴 그러다 보니까 예전에 명절마다 할머니댁에 내려가서 다같이 화투 쳤던 때가 생각났어요. 그때 진짜 재밌었는데.. 🤩 이번 추석 때는 꼭 다같이 화투 쳐요! 저도 연습을 많이 해서, 이제는 다 이길 수 있어요 👍 봉사는 정말 뿌듯한 일인 것 같아요. 할머니, 할아버지분들이 너무 따스하게 대해 주셔서 너무 감동이었어요. 오히려 제가 힘을 얻고 온 것 같아요. 다음에도 친구들이랑 또 봉사하러 가기로 약속했어요! 할머니, 항상 건강하세요! 곧 봬요 💖'),
                  ),
                ],
              ),
            ),
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
