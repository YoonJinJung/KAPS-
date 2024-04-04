import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/child_home/widgets/dairy_view_card.dart';

class DiaryDetailPage extends StatefulWidget {
  final DateTime date;
  final String title;
  final String content;

  const DiaryDetailPage({
    Key? key,
    required this.date,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  _DiaryDetailPageState createState() => _DiaryDetailPageState();
}

class _DiaryDetailPageState extends State<DiaryDetailPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorStyles.childmain,
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
                  height: 185,
                  color: ColorStyles.childmain,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(Icons.arrow_back_ios,
                                size: 20, color: Colors.white),
                            Text('나가기', style: TextStyles.white16),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Positioned(
                  top: 165,
                  child: DiaryViewCard(
                      date: widget.date,
                      content: widget.content,
                      title: widget.title,
                      from: '이효정',
                      to: '김춘자',
                      relationship: '할머니-손주'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, width: 30, color: Colors.black),
          const SizedBox(height: 15),
          const Text('오늘 하루는 어땠나요?', style: TextStyles.titleMedium18),
          const SizedBox(height: 15),
          const Text('하루를 돌아보며 부모님께서 기다리실\n당신의 반가운 소식을 전해보세요',
              style: TextStyles.grey14, textAlign: TextAlign.center),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/childDiaryField');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(158, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  surfaceTintColor: Colors.transparent,
                  backgroundColor: ColorStyles.childmain,
                  foregroundColor: Colors.white,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit_rounded, size: 22),
                    SizedBox(width: 2),
                    Text('일기 쓰기', style: TextStyles.whiteMedium18)
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/parentHome');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(158, 45),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: ColorStyles.childmain, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  surfaceTintColor: Colors.transparent,
                  backgroundColor: Colors.white,
                  foregroundColor: ColorStyles.childmain,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit_rounded, size: 22),
                    SizedBox(width: 2),
                    Text('AI따라쓰기', style: TextStyles.childMedium18)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
