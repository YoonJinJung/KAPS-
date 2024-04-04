import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/parent_home/parent_tab_home.dart';
import 'package:daranghae/view/parent_diary/parent_tab_diary.dart';
import 'package:daranghae/view/parent_community/parent_tab_community.dart';

class ParentNavigationBar extends StatefulWidget {
  const ParentNavigationBar({Key? key}) : super(key: key);

  @override
  State<ParentNavigationBar> createState() => _ParentNavigationBarState();
}

class _ParentNavigationBarState extends State<ParentNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(
        () => setState(() => _selectedIndex = _tabController.index));
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          indicatorColor: Colors.transparent,
          labelStyle: TextStyles.contentBold14,
          labelColor: ColorStyles.parentmain,
          labelPadding: const EdgeInsets.only(bottom: 7),
          unselectedLabelStyle: TextStyles.contentBold14.copyWith(
            color: ColorStyles.grey5,
          ),
          splashBorderRadius: BorderRadius.circular(10),
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Image.asset(
                  _selectedIndex == 0
                      ? 'assets/icons/mail_on.png'
                      : 'assets/icons/mail_off.png',
                  width: 33),
              text: "일기",
            ),
            Tab(
              icon: Image.asset(
                  _selectedIndex == 1
                      ? 'assets/icons/diary_on.png'
                      : 'assets/icons/diary_off.png',
                  width: 30),
              text: "다이어리",
            ),
            Tab(
              icon: Image.asset(
                  _selectedIndex == 2
                      ? 'assets/icons/smile_on.png'
                      : 'assets/icons/smile_off.png',
                  width: 31),
              text: "커뮤니티",
            ),
            Tab(
              icon: Image.asset(
                  _selectedIndex == 3
                      ? 'assets/icons/setting_on.png'
                      : 'assets/icons/setting_off.png',
                  width: 31),
              text: "설정",
            )
          ],
        ),
      ),
      body: _selectedIndex == 0
          ? const ParentTabHome()
          : _selectedIndex == 1
              ? const ParentTabDiary()
              : _selectedIndex == 2
                  ? ParentTabCommunity()
                  : tabContainer(context, Colors.green, "Settings Tab"),
    );
  }

  Container tabContainer(BuildContext context, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
