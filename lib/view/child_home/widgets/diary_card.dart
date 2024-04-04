import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/child_home/child_page_diary_detail.dart';

class DiaryCard extends StatelessWidget {
  final DateTime date;
  final String title;
  final String content;

  const DiaryCard({
    Key? key,
    required this.date,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Card(
        margin: const EdgeInsets.only(bottom: 20),
        color: Colors.white,
        elevation: 5,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DiaryDetailPage(
                  date: date,
                  title: title,
                  content: content,
                ),
              ),
            );
          },
          child: Container(
            width: _width * 0.85,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      getDate(date),
                      style: TextStyles.title18,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(color: ColorStyles.grey5),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyles.content16,
                ),
                const SizedBox(height: 15),
                Text(
                  content,
                  style: TextStyles.contentPreview,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getDate(DateTime date) {
    final now = DateTime.now();
    final isSameYear = date.year == now.year;
    final isSameMonth = isSameYear && date.month == now.month;

    return '${isSameMonth ? DateFormat('dd일').format(date) : DateFormat('MM월 dd일').format(date)} (${date.weekday == 1 ? '월' : date.weekday == 2 ? '화' : date.weekday == 3 ? '수' : date.weekday == 4 ? '목' : date.weekday == 5 ? '금' : date.weekday == 6 ? '토' : '일'})';
  }
}
