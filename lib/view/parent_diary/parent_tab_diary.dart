import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/parent_diary/calendar_detail.dart';

class ParentTabDiary extends StatefulWidget {
  const ParentTabDiary({Key? key}) : super(key: key);

  @override
  _ParentTabDiaryState createState() => _ParentTabDiaryState();
}

class _ParentTabDiaryState extends State<ParentTabDiary> {
  bool _isExpanded = false;
  bool _isBarVisible = false;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 1500,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/grid_bg.png', width: _width),
                Positioned(
                  top: 360,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CalendarDetail()));
                    },
                    child: Card(
                      elevation: 5,
                      surfaceTintColor: Colors.transparent,
                      child: Image.asset('assets/images/calendar.png',
                          width: _width * 0.95),
                    ),
                  ),
                ),
                Positioned(
                  top: 850,
                  child: Image.asset('assets/images/recap_btn.png',
                      width: _width * 0.95),
                ),
                Positioned(
                  top: 280,
                  child: Visibility(
                    visible: _isExpanded,
                    child: Container(
                        width: _width,
                        height: 1200,
                        color: ColorStyles.transGrey),
                  ),
                ),
                Positioned(
                  top: 60,
                  child: Image.asset('assets/images/parent_profile_card.png',
                      width: _width),
                ),
                Positioned(
                  top: 290,
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: SizedBox(
                      height: 115,
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOut,
                          height: 99,
                          width: _isExpanded ? 710 : 0,
                          child: Image.asset('assets/images/diary_menu_bar.png',
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 292,
                  right: 338,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: SizedBox(
                      width: 44,
                      child: Column(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeInOut,
                            height: _isExpanded ? 76 : 20,
                            width: 44,
                            color: const Color(0xFFFFCA8B),
                          ),
                          Container(
                            width: 44,
                            height: 44,
                            color: const Color(0xFFFFBC78),
                            child: Center(
                              child: Image.asset(
                                  'assets/icons/setting_white.png',
                                  width: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
