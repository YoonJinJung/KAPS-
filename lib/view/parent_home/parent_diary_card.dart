import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/parent_home/parent_diary_view.dart';

class ParentDiaryCard extends StatelessWidget {
  final DateTime date;
  final String title;
  final String content;
  final bool isSolved;

  const ParentDiaryCard({
    Key? key,
    required this.date,
    required this.title,
    required this.content,
    required this.isSolved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Card(
        margin: const EdgeInsets.only(bottom: 20),
        color: Colors.white,
        elevation: 7,
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
                builder: (context) => ParentDiaryViewPage(
                  date: date,
                  title: title,
                  content: content,
                ),
              ),
            );
          },
          child: Container(
            width: _width * 0.85,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              border: isSolved
                  ? Border.all(color: Colors.transparent)
                  : Border.all(color: ColorStyles.parentmain, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getDateText(date),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: isSolved
                              ? ColorStyles.grey2
                              : ColorStyles.parentmain,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(isSolved ? '풀이 완료' : '퀴즈 풀기',
                            style: isSolved
                                ? TextStyles.grey5Medium14
                                : TextStyles.whiteMedium14)),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyles.content14,
                ),
                const SizedBox(height: 5),
                const Divider(color: ColorStyles.grey2),
                const SizedBox(height: 10),
                Text(
                  content,
                  style: TextStyles.contentPreview.copyWith(fontSize: 14),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getDateText(DateTime date) {
    final now = DateTime.now();
    final isSameDay =
        date.day == now.day && date.month == now.month && date.year == now.year;
    final isSameYear = date.year == now.year;
    final isSameMonth = isSameYear && date.month == now.month;

    if (isSameDay)
      return Text('오늘의 일기',
          style: TextStyles.title18.copyWith(color: ColorStyles.parentmain));

    return Text(
        '${isSameMonth ? DateFormat('dd일').format(date) : DateFormat('MM월 dd일').format(date)} (${date.weekday == 1 ? '월' : date.weekday == 2 ? '화' : date.weekday == 3 ? '수' : date.weekday == 4 ? '목' : date.weekday == 5 ? '금' : date.weekday == 6 ? '토' : '일'})',
        style: TextStyles.title18);
  }
}
