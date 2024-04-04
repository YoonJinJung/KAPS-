import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/parent_home/upper_tab_diary.dart';
import 'package:daranghae/view/parent_home/upper_tab_quiz.dart';

class ParentTabHome extends StatefulWidget {
  const ParentTabHome({Key? key}) : super(key: key);

  @override
  _ParentTabHomeState createState() => _ParentTabHomeState();
}

class _ParentTabHomeState extends State<ParentTabHome>
    with SingleTickerProviderStateMixin {
  late TabController _upperTabController;

  int _upperTabIndex = 0;

  @override
  void initState() {
    super.initState();

    _upperTabController = TabController(length: 2, vsync: this);

    _upperTabController.addListener(
        () => setState(() => _upperTabIndex = _upperTabController.index));
  }

  @override
  void dispose() {
    _upperTabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: 153,
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              SizedBox(
                height: 48,
                child: TabBar(
                  indicatorColor: ColorStyles.parentmain,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextStyles.titleMedium18,
                  labelColor: Colors.black,
                  unselectedLabelStyle: TextStyles.content16.copyWith(
                    color: ColorStyles.grey5,
                  ),
                  splashBorderRadius: BorderRadius.circular(10),
                  controller: _upperTabController,
                  tabs: const [
                    Tab(
                      text: "일기 조회",
                    ),
                    Tab(
                      text: "퀴즈 풀기",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: _upperTabIndex == 0 ? UpperTabDiary() : UpperTabQuiz(),
          ),
        ),
      ],
    );
  }
}
