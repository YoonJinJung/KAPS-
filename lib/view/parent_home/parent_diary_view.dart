import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/child_home/widgets/dairy_view_card.dart';

class ParentDiaryViewPage extends StatefulWidget {
  final DateTime date;
  final String title;
  final String content;

  const ParentDiaryViewPage({
    Key? key,
    required this.date,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  _ParentDiaryViewPageState createState() => _ParentDiaryViewPageState();
}

class _ParentDiaryViewPageState extends State<ParentDiaryViewPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorStyles.parentAppbar,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/icons/heart.png'),
        ),
        leadingWidth: 48,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset('assets/icons/notification.png', width: 19),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset('assets/icons/dot3.png', width: 28),
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0), // 왼쪽 아래를 둥글게
            bottomRight: Radius.circular(10.0), // 오른쪽 아래를 둥글게
          ),
        ),
        scrolledUnderElevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 640,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 175,
                  color: ColorStyles.parentSecondary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back_ios,
                                size: 20, color: Colors.white),
                          ),
                          const SizedBox(width: 95),
                          Text(DateFormat('yyyy.MM.dd').format(widget.date),
                              style: TextStyles.whiteMedium24),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Positioned(
                  top: 150,
                  child: DiaryViewCard(
                      date: widget.date,
                      content: widget.content,
                      title: widget.title,
                      from: '이효정',
                      to: '김춘자',
                      relationship: '할머니-손주',
                      isParent: true),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: 30, color: Colors.black),
          const SizedBox(height: 15),
          const Text('오늘 하루도 기억해보세요', style: TextStyles.titleMedium18),
          const SizedBox(height: 15),
          const Text(
              '자녀님의 소중한 오늘의 일기가 유익했기를 바라요.\n기억력 유지를 위해 저번 일기 퀴즈를 푸는 것도 잊지 말아요!',
              style: TextStyles.grey13,
              textAlign: TextAlign.center),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              // TODO: 퀴즈 화면 이동
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(180, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              surfaceTintColor: Colors.transparent,
              backgroundColor: ColorStyles.parentmain,
              foregroundColor: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit_rounded, size: 22),
                SizedBox(width: 2),
                Text('퀴즈 풀러 가기', style: TextStyles.whiteMedium18)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
